import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserVerificationServeice {
  UserVerificationServeice(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  Stream<Either<UserFailure, String>> veryfyPhoneNo(
      {required String phoneNo}) async* {
    final StreamController<Either<UserFailure, String>> streamController =
        StreamController<Either<UserFailure, String>>();

    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: '+91$phoneNo',
      verificationCompleted: (_) {},
      verificationFailed: (FirebaseAuthException e) {
        streamController.add(
          left(
            UserFailure.serverFailure(
                errorMsg: e.message ?? 'Unknown error occerd'),
          ),
        );
      },
      codeSent: (String verificationId, int? token) {
        streamController.add(
          Right(verificationId),
        );
      },
      codeAutoRetrievalTimeout: (_) {},
    );

    yield* streamController.stream;
  }

  Future<Either<UserFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);

      await _firebaseAuth.signInWithCredential(phoneAuthCredential);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      return left(UserFailure.serverFailure(errorMsg: e.message.toString()));
    }
  }
}
