import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/failures/value_objects.dart/value_failure.dart';
import 'package:executives/domain/core/failures/value_objects.dart/value_object.dart';
import 'package:executives/domain/core/failures/value_objects.dart/value_validator.dart';

class SearchTeram extends ValueObjet<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const SearchTeram._({
    required this.value,
  });

  factory SearchTeram(String value) {
    return SearchTeram._(value: validateSearchTeram(value));
  }
}

class Amount extends ValueObjet<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  const Amount._({
    required this.value,
  });

  factory Amount(value) {
    return Amount._(value: validateAmount(value));
  }
}
