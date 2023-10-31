import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidUserName({required String errorMsg}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({required String errorMsg}) =
      InvlidPassword<T>;
  const factory ValueFailure.limitReached({required String errorMsg}) =
      LimitReached<T>;
  const factory ValueFailure.invalidAmount({required String errorMsg}) =
      InvalidAmount<T>;
  const factory ValueFailure.monthlyLimitExeeded({required String errorMsg}) =
      MonthlyLimitExeeded<T>;
}
