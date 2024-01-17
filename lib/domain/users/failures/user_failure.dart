import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.userNotFount({required String errorMsg}) =
      _UserNotFount;
  const factory UserFailure.serverFailure({required String errorMsg}) =
      _ServerFailure;
  const factory UserFailure.accountNotFont({required String errorMsg}) =
      _AccountNotFont;
  const factory UserFailure.transactionNotFound({required String errorMsg}) =
      _TransactionNotFound;
  const factory UserFailure.cashAndBankNotFount({required String errorMsg}) =
      _CashAndBankNotFount;
}
