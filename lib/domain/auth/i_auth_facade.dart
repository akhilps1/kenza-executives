import 'package:dartz/dartz.dart';
import 'package:executives/domain/auth/failures/auth_failure.dart';
import 'package:executives/domain/auth/failures/value_validater.dart';
import 'package:executives/domain/auth/models/app_user.dart';
import 'package:executives/domain/auth/models/executive.dart';

abstract class IAuthFacde {
  Future<Either<AuthFailure, Executive>> getEmployee({
    required Username username,
    required Password password,
  }) {
    throw UnimplementedError(
      'getExecutive() not implemented, implement this function before you calling it.',
    );
  }

  Either<AuthFailure, AppUser> checkAuthStatus() {
    throw UnimplementedError(
      'checkAuthStatus() not implemented, implement this function before you calling it.',
    );
  }
}
