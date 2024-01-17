import 'package:dartz/dartz.dart';
import 'package:executives/domain/auth/models/executive.dart';
import 'package:executives/domain/transactions/failures/transaction_failure.dart';
import 'package:executives/domain/transactions/models/payment_keys.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:executives/domain/users/models/daily_collection.dart';
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

  Future<Either<TransactionFailure, List<DailyCollection>>>
      getCollectionAmount({
    required String employeeId,
    required PickerDateRange dateRange,
  }) {
    throw UnimplementedError(
      'getCollectionAmount() not implemented, implement this function before you calling it.',
    );
  }

  void clear() {
    throw UnimplementedError(
      'clear() not implemented, implement this function before you calling it.',
    );
  }

  void clearSearch() {
    throw UnimplementedError(
      'clearSearch() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<TransactionFailure, List<TransactionDetails>>>
      refreshTransactions({
    required String employeeId,
    required String branchId,
  }) {
    throw UnimplementedError(
      'refreshTransactions() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<TransactionFailure, PaymentKeys>> getPaymetKeys({
    required String branchId,
  }) {
    throw UnimplementedError(
      'refreshTransactions() not implemented, implement this function before you calling it.',
    );
  }

  Stream<Executive> getEmployeeDetails({
    required String employeeId,
  }) {
    throw UnimplementedError(
      'getEmployeeDetails() not implemented, implement this function before you calling it.',
    );
  }
}
