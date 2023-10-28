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
  const factory UserDetailsEvent.getMonthlyLimit(UserDetails userDetails) =
      GetMonthlyLimit;
}
