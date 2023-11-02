part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    required bool isLoading,
    required bool noMoredata,
    required PickerDateRange? dateRange,
    required DailyCollection? dailyCollection,
    required SearchTeram searchTeram,
    required List<TransactionDetails> transactions,
    required List<TransactionDetails> searchItems,
  }) = _TransactionsState;

  factory TransactionsState.initial() => TransactionsState(
        isLoading: false,
        noMoredata: false,
        dateRange: null,
        dailyCollection: null,
        searchTeram: SearchTeram(''),
        transactions: [],
        searchItems: [],
      );
}
