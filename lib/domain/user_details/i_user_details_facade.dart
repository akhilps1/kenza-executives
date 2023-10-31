import 'package:dartz/dartz.dart';
import 'package:executives/domain/user_details/models/account_model.dart';
import 'package:executives/domain/user_details/models/daily_collection.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:executives/domain/users/models/user_details.dart';

abstract class IUserDeatailsFacade {
  Future<Either<UserFailure, AccountDetail>> getUserAccunt({
    required String userId,
    required String branchId,
  }) {
    throw UnimplementedError(
      'getUserAccunt() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, List<TransactionDetails>>> getTransactions({
    required String userId,
    required String branchId,
  }) {
    throw UnimplementedError(
      'getTransactions() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, Unit>> updateAmount({
    required DailyCollectionDetails collection,
  }) {
    throw UnimplementedError(
      'updateAmount() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, AccountDetail>> createNewAccount({
    required AccountDetail account,
  }) {
    throw UnimplementedError(
      'createNewAccount() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, TransactionDetails>> addTransaction(
    TransactionDetails transactionDetails,
  ) {
    throw UnimplementedError(
      'addTransaction() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, num>> getMonthlyLimit(
    UserDetails userDetails,
  ) {
    throw UnimplementedError(
      'getMonthlyLimit() not implemented, implement this function before you calling it.',
    );
  }

  void clearDoc() {
    throw UnimplementedError(
      'clearDoc() not implemented, implement this function before you calling it.',
    );
  }

  Stream<Either<UserFailure, String>> verifyUser({
    required String phoneNumber,
  }) {
    throw UnimplementedError(
      'verifyUser() not implemented, implement this function before you calling it.',
    );
  }

  Future<Either<UserFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) {
    throw UnimplementedError(
      'verifySmsCode() not implemented, implement this function before you calling it.',
    );
  }
}
