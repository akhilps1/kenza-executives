import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/auth/models/executive.dart';

import 'package:executives/domain/transactions/failures/transaction_failure.dart';
import 'package:executives/domain/transactions/i_transaction_facade.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:executives/domain/users/models/daily_collection.dart';
import 'package:executives/infrastructure/transactions/usecase/get_employee_details_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

@LazySingleton(as: ITransactionFacade)
class ITransactionImpl implements ITransactionFacade {
  ITransactionImpl(
      {required FirebaseFirestore firestore,
      required GetEmloyeeDetails emloyeeDetails})
      : _firestore = firestore,
        _emloyeeDetails = emloyeeDetails;

  final FirebaseFirestore _firestore;
  final GetEmloyeeDetails _emloyeeDetails;

  QueryDocumentSnapshot<Map<String, dynamic>>? _lastDoc;
  QueryDocumentSnapshot<Map<String, dynamic>>? _first;
  QueryDocumentSnapshot<Map<String, dynamic>>? _searchLastDoc;

  @override
  void clear() {
    _lastDoc = null;
    _first = null;
  }

  @override
  Future<Either<TransactionFailure, List<TransactionDetails>>>
      getAllTransactions({
    required String employeeId,
    required String branchId,
  }) async {
    try {
      final data = _lastDoc == null
          ? await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter('branchId', isEqualTo: branchId),
                  Filter('employeeId', isEqualTo: employeeId),
                  Filter('show', isEqualTo: true),
                ),
              )
              .limit(15)
              .get()
          : await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter('branchId', isEqualTo: branchId),
                  Filter('employeeId', isEqualTo: employeeId),
                  Filter('show', isEqualTo: true),
                ),
              )
              .startAfterDocument(_lastDoc!)
              .limit(15)
              .get();
      log('refreshTransactions() Exception $data');

      if (data.docs.isNotEmpty) {
        _lastDoc = data.docs.last;
        _first = data.docs.first;
        return right(data.docs
            .map(
              (e) => TransactionDetails.fromMap(e.data()).copyWith(id: e.id),
            )
            .toList());
      } else {
        return left(
          const TransactionFailure.notFount(errorMsg: 'Transactions not fount'),
        );
      }
    } on Exception catch (e) {
      log('getAllTransactions() Exception $e');
      return left(
        TransactionFailure.serverFailure(errorMsg: e.toString()),
      );
    }
  }

  @override
  Future<Either<TransactionFailure, List<TransactionDetails>>>
      getTransactionByDateRange({
    required String employeeId,
    required String branchId,
    required PickerDateRange dateRange,
  }) async {
    // log('start ${dateRange.startDate!.add(const Duration(microseconds: 1))}, end${dateRange.endDate!.add(const Duration(hours: 23, minutes: 59, seconds: 59))}');
    try {
      final data = _lastDoc == null
          ? await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter('branchId', isEqualTo: branchId),
                  Filter('employeeId', isEqualTo: employeeId),
                ),
              )
              .where(
                Filter.and(
                  Filter('timestamp',
                      isGreaterThanOrEqualTo: dateRange.startDate!
                          .add(const Duration(microseconds: 1))),
                  Filter(
                    'timestamp',
                    isLessThanOrEqualTo: dateRange.endDate!.add(
                      const Duration(
                        hours: 23,
                        minutes: 59,
                        seconds: 59,
                        milliseconds: 59,
                        microseconds: 59,
                      ),
                    ),
                  ),
                  Filter('show', isEqualTo: true),
                ),
              )
              .limit(15)
              .get()
          : await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter('branchId', isEqualTo: branchId),
                  Filter('employeeId', isEqualTo: employeeId),
                ),
              )
              .where(
                Filter.and(
                  Filter(
                    'timestamp',
                    isGreaterThanOrEqualTo: dateRange.startDate!.add(
                      const Duration(microseconds: 1),
                    ),
                  ),
                  Filter(
                    'timestamp',
                    isLessThanOrEqualTo: dateRange.endDate!.add(
                      const Duration(
                        hours: 23,
                        minutes: 59,
                        seconds: 59,
                        milliseconds: 59,
                        microseconds: 59,
                      ),
                    ),
                  ),
                  Filter('show', isEqualTo: true),
                ),
              )
              .startAfterDocument(_lastDoc!)
              .limit(15)
              .get();

      log('getTransactionByDateRange() ${data.docs}');

      if (data.docs.isNotEmpty) {
        _searchLastDoc = data.docs.last;

        return right(data.docs
            .map(
              (e) => TransactionDetails.fromMap(e.data()).copyWith(id: e.id),
            )
            .toList());
      } else {
        return left(
          const TransactionFailure.notFount(errorMsg: 'Transactions not fount'),
        );
      }
    } on Exception catch (e) {
      log('getTransactionByDateRange() Exception $e');
      return left(
        TransactionFailure.serverFailure(errorMsg: e.toString()),
      );
    }
  }

  @override
  Future<Either<TransactionFailure, List<TransactionDetails>>>
      searchTransaction({
    required String employeeId,
    required String branchId,
    required String searchTearm,
  }) async {
    try {
      final data = _searchLastDoc == null
          ? await _firestore
              .collection('transactions')
              .orderBy('timestamp', descending: true)
              .where(
                Filter.and(
                  Filter('branchId', isEqualTo: branchId),
                  Filter('employeeId', isEqualTo: employeeId),
                  Filter('show', isEqualTo: true),
                  Filter.or(
                    Filter(
                      'userDetails.phoneNo',
                      isEqualTo: searchTearm,
                    ),
                    Filter(
                      'userDetails.refferalCode',
                      isEqualTo: searchTearm,
                    ),
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
                  Filter('branchId', isEqualTo: branchId),
                  Filter('employeeId', isEqualTo: employeeId),
                  Filter('show', isEqualTo: true),
                  Filter.or(
                    Filter(
                      'userDetails.phoneNo',
                      isEqualTo: searchTearm,
                    ),
                    Filter(
                      'userDetails.refferalCode',
                      isEqualTo: searchTearm,
                    ),
                  ),
                ),
              )
              .startAfterDocument(_lastDoc!)
              .limit(15)
              .get();
      log('searchTransaction() $data');

      if (data.docs.isNotEmpty) {
        _searchLastDoc = data.docs.last;

        return right(data.docs
            .map(
              (e) => TransactionDetails.fromMap(e.data()).copyWith(id: e.id),
            )
            .toList());
      } else {
        return left(
          const TransactionFailure.notFount(errorMsg: 'Transactions not fount'),
        );
      }
    } on Exception catch (e) {
      log('searchTransaction() Exception $e');
      return left(
        TransactionFailure.serverFailure(errorMsg: e.toString()),
      );
    }
  }

  @override
  Future<Either<TransactionFailure, List<TransactionDetails>>>
      refreshTransactions({
    required String employeeId,
    required String branchId,
  }) async {
    if (_first == null) {
      return left(
        const TransactionFailure.notFount(errorMsg: 'Transactions not fount'),
      );
    }
    try {
      final data = await _firestore
          .collection('transactions')
          .orderBy('timestamp', descending: true)
          .where(
            Filter.and(
              Filter('branchId', isEqualTo: branchId),
              Filter('employeeId', isEqualTo: employeeId),
              Filter('show', isEqualTo: true),
            ),
          )
          .endBeforeDocument(_first!)
          .get();

      log('refreshTransactions() $data');

      if (data.docs.isNotEmpty && data.docs.first != _first) {
        _first = data.docs.first;

        return right(data.docs
            .map(
              (e) => TransactionDetails.fromMap(e.data()).copyWith(id: e.id),
            )
            .toList());
      } else {
        return left(
          const TransactionFailure.notFount(errorMsg: 'Transactions not fount'),
        );
      }
    } on Exception catch (e) {
      log('refreshTransactions() Exception $e');
      return left(
        TransactionFailure.serverFailure(errorMsg: e.toString()),
      );
    }
  }

  @override
  void clearSearch() {
    _searchLastDoc = null;
  }

  @override
  Future<Either<TransactionFailure, List<DailyCollection>>>
      getCollectionAmount({
    required String employeeId,
    required PickerDateRange dateRange,
  }) async {
    try {
      final data = await _firestore
          .collection('executive')
          .doc(employeeId)
          .collection('daily_collection')
          .where(
            Filter.and(
              Filter(
                'timestamp',
                isGreaterThanOrEqualTo: dateRange.startDate!.add(
                  const Duration(microseconds: 1),
                ),
              ),
              Filter(
                'timestamp',
                isLessThanOrEqualTo: dateRange.endDate!.add(
                  const Duration(
                    hours: 23,
                    minutes: 59,
                    seconds: 59,
                    milliseconds: 59,
                    microseconds: 59,
                  ),
                ),
              ),
            ),
          )
          .get();
      log('getCollectionAmount()  ${data.docs}');
      if (data.docs.isNotEmpty) {
        return right(
          data.docs
              .map((e) => DailyCollection.fromMap(e.data()).copyWith(id: e.id))
              .toList(),
        );
      } else {
        return left(
          const TransactionFailure.notFount(errorMsg: 'Details not fount'),
        );
      }
    } on Exception catch (e) {
      log('getCollectionAmount() Exception $e');
      return left(
        TransactionFailure.serverFailure(
          errorMsg: e.toString(),
        ),
      );
    }
  }

  @override
  Stream<Executive> getEmployeeDetails({
    required String employeeId,
  }) {
    return _emloyeeDetails.getEmployeeDetails(employeeId: employeeId);
  }
}
