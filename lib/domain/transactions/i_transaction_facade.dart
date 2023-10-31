import 'package:dartz/dartz.dart';
import 'package:executives/domain/transactions/failures/transaction_failure.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

abstract class ITransactionFacade {
  Future<Either<TransactionFailure, List<TransactionDetails>>>
      getAllTransactions({
    required String employeeId,
    required String branchId,
  }) {
    throw UnimplementedError(
      'getAllTransactions() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<TransactionFailure, List<TransactionDetails>>>
      searchTransaction({
    required String employeeId,
    required String branchId,
    required String searchTearm,
  }) {
    throw UnimplementedError(
      'searchTransaction() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<TransactionFailure, List<TransactionDetails>>>
      getTransactionByDateRange({
    required String employeeId,
    required String branchId,
    required PickerDateRange dateRange,
  }) {
    throw UnimplementedError(
      'getTransactionByDateRange() not implemented, implement this function before you calling it.',
    );
  }

  void clear() {
    throw UnimplementedError(
      'getTransactionByDateRange() not implemented, implement this function before you calling it.',
    );
  }
}
