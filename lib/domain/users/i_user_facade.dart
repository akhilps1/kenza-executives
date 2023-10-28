import 'package:dartz/dartz.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:executives/domain/users/failures/value_validator.dart';
import 'package:executives/domain/users/models/user_details.dart';

abstract class IUserFacade {
  Future<Either<UserFailure, List<UserDetails>>> getAllUsers(String branchId) {
    throw UnimplementedError(
      'getAllUsers() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, UserDetails>> serachUser({
    required String branchId,
    required SearchTeram searchTeram,
  }) {
    throw UnimplementedError(
      'serachUser() not implemented, implement this function before you calling it.',
    );
  }

  void clearData() {
    throw UnimplementedError(
      'clearData() not implemented, implement this function before you calling it.',
    );
  }
}
