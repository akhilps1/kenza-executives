// Import necessary libraries and dependencies
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/auth/failures/auth_failure.dart';
import 'package:executives/domain/auth/failures/value_validater.dart';
import 'package:executives/domain/auth/i_auth_facade.dart';
import 'package:executives/domain/auth/models/app_user.dart';
import 'package:executives/domain/auth/models/executive.dart';
import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

// Declare the class IAuthImpl that implements IAuthFacde
@LazySingleton(as: IAuthFacde)
class IAuthImpl implements IAuthFacde {
  // Constructor that takes SharedPreferences and FirebaseFirestore as dependencies
  IAuthImpl({
    required SharedPreferences preferences,
    required FirebaseFirestore firestore,
  })  : _preferences = preferences,
        _firebaseFirestore = firestore;

  // Declare private variables for Firestore and SharedPreferences
  final FirebaseFirestore _firebaseFirestore;
  final SharedPreferences _preferences;

  // Implement the method to get employee details
  @override
  Future<Either<AuthFailure, Executive>> getEmployee({
    required Username username,
    required Password password,
  }) async {
    try {
      // Query the Firestore collection for an executive with matching username and password
      final data = await _firebaseFirestore
          .collection('executive')
          .where(
            Filter.and(
              Filter(
                'userName',
                isEqualTo: username.getOrCrash(),
              ),
              Filter(
                'password',
                isEqualTo: password.getOrCrash(),
              ),
            ),
          )
          .get();

      print(data.docs.toString());

      // If a matching document is found, save the user's credentials and return the user data
      if (data.docs.isNotEmpty) {
        await _saveUser(
          userName: username.getOrCrash(),
          password: password.getOrCrash(),
        );

        return right(
          Executive.fromFireStore(
            data.docs.first.data(),
          ).copyWith(
            id: data.docs.first.id,
          ),
        );
      } else {
        // If no matching document is found, return an authentication failure
        return left(
          const AuthFailure.invalidCredentials(errorMsg: 'Invalid Credentials'),
        );
      }
    } on Exception catch (e) {
      // Handle exceptions and return a server failure if an exception occurs
      log('getEmployee() Exception $e');
      return left(
        AuthFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Either<AuthFailure, AppUser> checkAuthStatus() {
    final userName = _preferences.getString('userName');
    final password = _preferences.getString('password');

    log(userName.toString());
    log(password.toString());

    if (userName != null &&
        userName.isNotEmpty &&
        password != null &&
        password.isNotEmpty) {
      return right(
        AppUser(
          userName: userName,
          password: password,
        ),
      );
    } else {
      return left(
        const AuthFailure.notAuthenticated(),
      );
    }
  }

  // Private method to save user credentials to SharedPreferences
  Future<void> _saveUser({
    required String userName,
    required String password,
  }) async {
    await _preferences.setString('userName', userName);
    await _preferences.setString('password', password);
  }
}
