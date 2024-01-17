import 'dart:async';
import 'dart:developer';

import 'package:executives/domain/user_details/models/cash_and_bank_details.dart';
import 'package:executives/infrastructure/user_details/usecase/get_cash_and_bank_details.dart';
import 'package:executives/infrastructure/user_details/usecase/notification_usecase.dart';
import 'package:executives/infrastructure/user_details/usecase/user_verification_usecase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/serveice/keywords_generater.dart';
import 'package:executives/domain/user_details/i_user_details_facade.dart';
import 'package:executives/domain/user_details/models/account_model.dart';
import 'package:executives/domain/user_details/models/daily_collection.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserDeatailsFacade)
class IUserDeatailsImpl implements IUserDeatailsFacade {
  IUserDeatailsImpl({
    required FirebaseFirestore firestore,
    required NotificationServeice notificationServeice,
    required UserVerificationServeice userVerificationServeice,
    required GetCashAndBankDetails cashAndBankDetails,
  })  : _firestore = firestore,
        _notificationServeice = notificationServeice,
        _userVerificationServeice = userVerificationServeice,
        _cashAndBankDetails = cashAndBankDetails;

  final FirebaseFirestore _firestore;

  final NotificationServeice _notificationServeice;

  final UserVerificationServeice _userVerificationServeice;
  final GetCashAndBankDetails _cashAndBankDetails;

  QueryDocumentSnapshot<Map<String, dynamic>>? _lastDoc;

  @override
  Future<Either<UserFailure, TransactionDetails>> addTransaction(
    TransactionDetails transactionDetails,
  ) async {
    try {
      final ref = _firestore.collection('transactions').doc();
      final kewords = getKeywords(ref.id);
      await ref.set(
        transactionDetails.copyWith(
          id: ref.id,
          keywords: [
            ...transactionDetails.keywords,
            ...kewords,
          ],
        ).toMap(),
      );

      await _notificationServeice.sendFcmMessage(
        body: '',
        title: '',
        token: transactionDetails.userDetails.token,
      );
      return right(
        transactionDetails.copyWith(id: ref.id),
      );
    } catch (e) {
      log(e.toString());
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<UserFailure, AccountDetail>> createNewAccount({
    required AccountDetail account,
  }) async {
    try {
      // Add the account to the Firestore 'accounts' collection
      final data = await _firestore.collection('accounts').add(account.toMap());
      // Return a 'right' value with the created account and its ID
      return right(
        account.copyWith(
          id: data.id,
        ),
      );
    } catch (e) {
      // Return a 'left' value with a failure message in case of an error
      return left(
        UserFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
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
    required bool isOffline,
    required DailyCollectionDetails collection,
    required UserDetails userDetails,
    required CashAndBankDetails cashAndBankDetails,
  }) async {
    final batch = _firestore.batch();
    final monthilyLimitId =
        DateTime.now().year.toString() + DateTime.now().month.toString();

    final dailyCollectionId = DateTime.now().year.toString() +
        DateTime.now().month.toString() +
        DateTime.now().day.toString();

    final lastTransactionMonth =
        // ignore: lines_longer_than_80_chars
        '${userDetails.lastPayment?.timestamp.toDate().year}${userDetails.lastPayment?.timestamp.toDate().month}';

    batch
      ..update(
        _firestore.collection('accounts').doc(collection.accountId),
        {
          'deposits': FieldValue.increment(collection.amount),
        },
      )
      ..update(_firestore.collection('branches').doc(collection.branchId), {
        'totalTransactionAmount': FieldValue.increment(collection.amount),
      })
      ..update(
          _firestore
              .collection('users')
              .doc(collection.userId)
              .collection('monthly_limit')
              .doc(monthilyLimitId),
          {
            'limit': FieldValue.increment(-collection.amount),
          })
      ..update(_firestore.collection('executive').doc(collection.employeeId), {
        'collected': FieldValue.increment(collection.amount),
      })
      ..update(
          _firestore
              .collection('branches')
              .doc(collection.branchId)
              .collection('daily_collection')
              .doc(dailyCollectionId),
          isOffline
              ? {
                  'amount': FieldValue.increment(collection.amount),
                  'offline': FieldValue.increment(collection.amount),
                }
              : {
                  'amount': FieldValue.increment(collection.amount),
                  'online': FieldValue.increment(collection.amount),
                })
      ..update(
        _firestore.collection('users').doc(collection.userId),
        {
          'lastPayment.timestamp': Timestamp.now(),
          'lastPayment.amount': lastTransactionMonth == monthilyLimitId
              ? FieldValue.increment(collection.amount)
              : collection.amount,
        },
      )
      ..update(
          _firestore
              .collection('executive')
              .doc(collection.employeeId)
              .collection('daily_collection')
              .doc(dailyCollectionId),
          {
            'amount': FieldValue.increment(collection.amount),
          })
      ..update(
          _firestore.collection('cash_and_bank').doc(cashAndBankDetails.id),
          isOffline
              ? {
                  'cashBalance': FieldValue.increment(collection.amount),
                }
              : {
                  'bankBalance': FieldValue.increment(collection.amount),
                });

    try {
      batch.commit();
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

  @override
  void clearDoc() {
    _lastDoc = null;
  }

  @override
  Future<Either<UserFailure, num>> getMonthlyLimit(
    UserDetails userDetails,
  ) async {
    final id = DateTime.now().year.toString() + DateTime.now().month.toString();
    log(id);
    try {
      final data = await _firestore
          .collection('users')
          .doc(userDetails.id)
          .collection('monthly_limit')
          .doc(id)
          .get();

      log('getMonthlyLimit $data');

      if (data.data() != null) {
        return right(data.data()!['limit']);
      } else {
        await _firestore
            .collection('users')
            .doc(userDetails.id)
            .collection('monthly_limit')
            .doc(id)
            .set(
          {
            'limit': userDetails.maxDepositeAmount,
          },
        );

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

  @override
  Stream<Either<UserFailure, String>> verifyUser({
    required String phoneNumber,
  }) {
    return _userVerificationServeice.veryfyPhoneNo(phoneNo: phoneNumber);
  }

  @override
  Future<Either<UserFailure, Unit>> verifySmsCode(
      {required String smsCode, required String verificationId}) {
    //
    return _userVerificationServeice.verifySmsCode(
      smsCode: smsCode,
      verificationId: verificationId,
    );
  }

  @override
  Future<Either<UserFailure, CashAndBankDetails>> getCashAndBankDetails({
    required String branchId,
  }) {
    return _cashAndBankDetails(branchId);
  }
}
