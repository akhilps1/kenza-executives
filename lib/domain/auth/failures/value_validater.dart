import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/failures/value_objects.dart/value_failure.dart';
import 'package:executives/domain/core/failures/value_objects.dart/value_validator.dart';

import '../../core/failures/value_objects.dart/value_object.dart';

class Username extends ValueObjet<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Username._({
    required this.value,
  });

  factory Username(String value) {
    return Username._(value: validateUserName(value));
  }
}

class Password extends ValueObjet<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._({
    required this.value,
  });

  factory Password(String value) {
    return Password._(value: validatePassword(value));
  }
}
