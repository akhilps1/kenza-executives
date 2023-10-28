import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/failures/value_objects.dart/value_failure.dart';
import 'package:executives/domain/users/models/user_details.dart';

Either<ValueFailure<String>, String> validateUserName(String userName) {
  if (userName.isNotEmpty) {
    return right(userName);
  } else {
    return left(
      const ValueFailure.invalidUserName(
        errorMsg: 'Username cannot be empty',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.isNotEmpty) {
    return right(password);
  } else {
    return left(
      const ValueFailure.invalidPassword(
        errorMsg: 'Password cannot be empty',
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateSearchTeram(String searchTeram) {
  if (searchTeram.isNotEmpty) {
    return right(searchTeram);
  } else {
    return left(
      const ValueFailure.invalidPassword(
        errorMsg: 'searchTeram cannot be empty',
      ),
    );
  }
}

Either<ValueFailure<num>, num> validateAmount(
  num amount,
) {
  if (amount > 0) {
    return right(amount);
  } else {
    return left(
        const ValueFailure.invalidAmount(errorMsg: 'Amount cannot be empty'));
  }
}
