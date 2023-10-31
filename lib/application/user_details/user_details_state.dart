part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required bool isLoading,
    required bool firebaseLoading,
    required bool firstTime,
    required bool noMoredata,
    required AutovalidateMode showError,
    required num limit,
    required Option<TransactionDetails> successOption,
    required AccountDetail? account,
    required Amount amount,
    required String note,
    required List<TransactionDetails> transactions,
  }) = _UserDetailsState;

  factory UserDetailsState.initial() => UserDetailsState(
        isLoading: false,
        noMoredata: false,
        firstTime: false,
        firebaseLoading: false,
        amount: Amount(0),
        limit: 0,
        successOption: none(),
        showError: AutovalidateMode.disabled,
        account: null,
        note: '',
        transactions: [],
      );
}
