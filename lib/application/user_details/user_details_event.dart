part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.getAllAccounts({
    required String userId,
    required String branchId,
  }) = GetAllAccounts;
  const factory UserDetailsEvent.getAllTransactions({
    required String userId,
    required String branchId,
  }) = GetAllTransactions;

  const factory UserDetailsEvent.clearUserDetailsData() = ClearUserDetailsData;
  const factory UserDetailsEvent.amountChanged(num amount) = AmountChanged;
  const factory UserDetailsEvent.noteChanged(String note) = NoteChanged;
  const factory UserDetailsEvent.getMonthlyLimit(UserDetails userDetails) =
      GetMonthlyLimit;
  const factory UserDetailsEvent.receveAmount({
    required UserDetails userDetails,
    required String employeeId,
  }) = ReceveAmount;

  const factory UserDetailsEvent.addTransaction({
    required UserDetails userDetails,
    required DailyCollectionDetails dailyCollectionDetails,
  }) = _AddTransaction;

  const factory UserDetailsEvent.createNewAccount({
    required UserDetails userDetails,
    required String employeeId,
  }) = CreateNewAccount;
  const factory UserDetailsEvent.firstTimePayment(bool firstTime) =
      FirstTimePayment;
}
