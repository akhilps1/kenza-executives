part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required bool isLoading,
    required bool noMoredata,
    required AutovalidateMode showError,
    required Amount limit,
    required AccountDetail? account,
    required Amount amount,
    required List<TransactionDetails> transactions,
  }) = _UserDetailsState;

  factory UserDetailsState.initial() => UserDetailsState(
        isLoading: false,
        noMoredata: false,
        amount: Amount(0),
        limit: Amount(0),
        showError: AutovalidateMode.disabled,
        account: null,
        transactions: [],
      );
}
