part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required bool isLoading,
    required bool transactionType,
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
    required CashAndBankDetails cashAndBankDetails,
    required UserDetails? userDetails,
  }) = _UserDetailsState;

  factory UserDetailsState.initial() => UserDetailsState(
        userDetails: null,
        isLoading: false,
        noMoredata: false,
        firstTime: false,
        firebaseLoading: false,
        transactionType: true,
        amount: Amount(0),
        limit: 0,
        successOption: none(),
        showError: AutovalidateMode.disabled,
        account: null,
        note: '',
        transactions: [],
        cashAndBankDetails: CashAndBankDetails.initial(),
      );
}
