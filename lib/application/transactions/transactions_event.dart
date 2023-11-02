part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.getAllTransactions({
    required String employeeId,
    required String branchId,
  }) = GetAllTransactions;
  const factory TransactionsEvent.refreshTransaction({
    required String employeeId,
    required String branchId,
  }) = RefreshTransaction;

  const factory TransactionsEvent.searchTearmChanged({
    required String searchTearm,
  }) = SearchTearmChanged;

  const factory TransactionsEvent.searchClicked({
    required String employeeId,
    required String branchId,
  }) = SearchClicked;

  const factory TransactionsEvent.clearSearch() = ClearSearch;
  const factory TransactionsEvent.clearTransaction() = ClearTransaction;
  const factory TransactionsEvent.clearTransactionData() = ClearTransactionData;
  const factory TransactionsEvent.dateRangeChanged({
    required PickerDateRange range,
  }) = DateRangeChanged;

  const factory TransactionsEvent.clearDateRange({
    required String employeeId,
    required String branchId,
  }) = ClearDateRange;
  const factory TransactionsEvent.cancelDateRange() = CancelDateRange;

  const factory TransactionsEvent.dateRangeApplied({
    required String employeeId,
    required String branchId,
  }) = DateRangeApplied;

  const factory TransactionsEvent.getCollectionAmount({
    required String employeeId,
    required PickerDateRange dateRange,
  }) = _GetCollectionAmount;

  const factory TransactionsEvent.getTotalAmoutCollected(
      DailyCollection collection) = GetTotalAmoutCollected;
}
