import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_failure.freezed.dart';

@freezed
class TransactionFailure with _$TransactionFailure {
  const factory TransactionFailure.serverFailure({required String errorMsg}) =
      _ServerFailure;
  const factory TransactionFailure.notFount({required String errorMsg}) =
      _NotFount;
}
