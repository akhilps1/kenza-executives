import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:executives/domain/users/failures/value_validator.dart';
import 'package:executives/domain/users/i_user_facade.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserFacade)
class IUserImpl implements IUserFacade {
  IUserImpl(this._firestore);

  final FirebaseFirestore _firestore;
  QueryDocumentSnapshot<Map<String, dynamic>>? _lastDoc;

  @override
  Future<Either<UserFailure, List<UserDetails>>> getAllUsers(
      String branchId) async {
    try {
      final data = _lastDoc == null
          ? await _firestore
              .collection('users')
              .orderBy('timestamp', descending: true)
              .where('branchId', isEqualTo: branchId)
              .limit(10)
              .get()
          : await _firestore
              .collection('users')
              .orderBy('timestamp', descending: true)
              .where('branchId', isEqualTo: branchId)
              .startAfterDocument(_lastDoc!)
              .limit(10)
              .get();
      if (data.docs.isNotEmpty) {
        _lastDoc = data.docs.last;
        return right(data.docs
            .map((e) => UserDetails.fromMap(e.data()).copyWith(id: e.id))
            .toList());
      } else {
        return left(
          const UserFailure.userNotFount(errorMsg: 'User Not Fount'),
        );
      }
    } on Exception catch (e) {
      log('getAllUsers() Exception $e');
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<UserFailure, UserDetails>> serachUser({
    required String branchId,
    required SearchTeram searchTeram,
  }) async {
    try {
      final data = await _firestore
          .collection('users')
          .orderBy('timestamp', descending: true)
          .where(
            Filter.and(
              Filter('branchId', isEqualTo: branchId),
              Filter.or(
                Filter(
                  'refferalCode',
                  isEqualTo: searchTeram.getOrCrash(),
                ),
                Filter(
                  'phoneNo',
                  isEqualTo: searchTeram.getOrCrash(),
                ),
              ),
            ),
          )
          .limit(1)
          .get();

      if (data.docs.isNotEmpty) {
        return right(
          UserDetails.fromMap(data.docs.first.data()).copyWith(
            id: data.docs.first.id,
          ),
        );
      } else {
        return left(
          const UserFailure.userNotFount(errorMsg: 'User Not Fount'),
        );
      }
    } on Exception catch (e) {
      log('getAllUsers() Exception $e');
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  void clearData() {
    _lastDoc = null;
  }
}
