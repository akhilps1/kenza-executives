import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/user_details/i_user_details_facade.dart';
import 'package:executives/domain/user_details/models/account_model.dart';
import 'package:executives/domain/user_details/models/daily_collection.dart';
import 'package:executives/domain/user_details/models/transaction.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserDeatailsFacade)
class IUserDeatailsImpl implements IUserDeatailsFacade {
  IUserDeatailsImpl(
      {required FirebaseFirestore firestore,
      required FirebaseMessaging messaging})
      : _firestore = firestore,
        _messaging = messaging;

  final FirebaseFirestore _firestore;
  final FirebaseMessaging _messaging;

  QueryDocumentSnapshot<Map<String, dynamic>>? _lastDoc;

  @override
  Future<Either<UserFailure, TransactionDetails>> addTransaction(
      TransactionDetails transactionDetails) {
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, TransactionDetails>> createNewAccount(
      {required String accountId}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, List<TransactionDetails>>> getTransactions({
    required String userId,
    required String branchId,
  }) async {
    try {
      // Query Firestore for transaction data based on the provided criteria
      final data = (_lastDoc == null)
          ? await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter('branchId', isEqualTo: branchId),
                  Filter(
                    'userDetails.id',
                    isEqualTo: userId,
                  ),
                ),
              )
              .limit(15)
              .get()
          : await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter(
                    'branchId',
                    isEqualTo: branchId,
                  ),
                  Filter(
                    'userDetails.id',
                    isEqualTo: userId,
                  ),
                ),
              )
              .startAfterDocument(_lastDoc!)
              .limit(15)
              .get();

      log('getTransactions() AccountDetailsRepo: ${data.docs}');

      if (data.docs.isNotEmpty) {
        _lastDoc = data.docs.last;
        // Map the retrieved data to a list of TransactionDetails
        return right(
          data.docs
              .map(
                (e) => TransactionDetails.fromMap(e.data()).copyWith(
                  id: e.id,
                ),
              )
              .toList(),
        );
      } else {
        return left(
          const UserFailure.transactionNotFound(errorMsg: 'Nothing to show'),
        );
      }
    } catch (e) {
      log('getTransactions Exception: $e');
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<UserFailure, AccountDetail>> getUserAccunt({
    required String userId,
    required String branchId,
  }) async {
    try {
      final data = await _firestore
          .collection('accounts')
          .orderBy('createdAt', descending: true)
          .where(
            Filter.and(
              Filter('userId', isEqualTo: userId),
              Filter('branchId', isEqualTo: branchId),
            ),
          )
          .limit(1)
          .get();
      log('getAllAccounts: ${data.docs}');
      if (data.docs.isNotEmpty) {
        return right(
          AccountDetail.fromMap(
            data.docs.first.data(),
          ).copyWith(id: data.docs.first.id),
        );
      } else {
        return left(
          const UserFailure.accountNotFont(errorMsg: 'Account not found'),
        );
      }
    } on Exception catch (e) {
      log('getUserAccunt() Exception: $e');
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateAmount({
    required DailyCollection collection,
  }) async {
    try {
      await Future.wait(
        [
          _updateAmountInAccount(collection),
          _updateAmountInBranch(collection),
          _updateAmountInEmployee(collection),
          _updateDailyCollectedAmount(collection),
        ],
      );
      return right(unit);
    } on Exception catch (e) {
      log('updateAmount() Exception: $e');
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  Future<void> _updateAmountInAccount(DailyCollection collection) async {
    await _firestore.collection('accounts').doc(collection.accountId).update({
      'deposits': FieldValue.increment(collection.amount.getOrCrash()),
    });
  }

  Future<void> _updateAmountInBranch(DailyCollection collection) async {
    await _firestore.collection('branches').doc(collection.branchId).update({
      'totalTransactionAmount':
          FieldValue.increment(collection.amount.getOrCrash()),
    });
  }

  Future<void> _updateAmountInEmployee(DailyCollection collection) async {
    await _firestore.collection('branches').doc(collection.employeeId).update({
      'collected': FieldValue.increment(collection.amount.getOrCrash()),
    });
  }

  Future<void> _updateDailyCollectedAmount(DailyCollection collection) async {
    final id = "${DateTime.now()
      ..day
      ..month
      ..year}";

    await _firestore.collection('executive').doc(id).set(
          collection.toMap(),
        );
  }

  @override
  void clearDoc() {
    _lastDoc = null;
  }

  @override
  Future<Either<UserFailure, num>> getMonthlyLimit(
    UserDetails userDetails,
  ) async {
    final id = "${DateTime.now()
      ..year
      ..month}";
    try {
      final data = await _firestore
          .collection('useres')
          .doc(userDetails.id)
          .collection('monthly_limit')
          .doc(id)
          .get();

      if (data.data() != null) {
        return right(data.data()!['limit']);
      } else {
        await _firestore
            .collection('useres')
            .doc(userDetails.id)
            .collection('monthly_limit')
            .doc(id)
            .set({
          'limit': userDetails.maxDepositeAmount,
        });

        return right(userDetails.maxDepositeAmount);
      }
    } on Exception catch (e) {
      log('getMonthlyLimit() Exception: $e');
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }
}
