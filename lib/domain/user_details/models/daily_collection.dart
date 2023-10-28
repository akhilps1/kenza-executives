// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:executives/domain/users/failures/value_validator.dart';

class DailyCollection {
  String? id;
  final String branchId;
  final String accountId;
  final String employeeId;
  final String userId;
  final Amount amount;
  final num collectedAmount;
  final num lastDayCollected;
  DailyCollection({
    required this.branchId,
    required this.accountId,
    required this.employeeId,
    required this.userId,
    required this.amount,
    required this.collectedAmount,
    required this.lastDayCollected,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'branchId': branchId,
      'accountId': accountId,
      'employeeId': employeeId,
      'userId': userId,
      'amount': amount.getOrCrash(),
      'collectedAmount': collectedAmount,
      'lastDayCollected': lastDayCollected,
    };
  }

  factory DailyCollection.fromMap(Map<String, dynamic> map) {
    return DailyCollection(
      id: map['id'] != null ? map['id'] as String : null,
      branchId: map['branchId'] as String,
      accountId: map['accountId'] as String,
      employeeId: map['employeeId'] as String,
      userId: map['userId'] as String,
      amount: Amount(map['amount'] as num),
      collectedAmount: map['collectedAmount'] as num,
      lastDayCollected: map['lastDayCollected'] as num,
    );
  }

  DailyCollection copyWith({
    String? id,
    String? branchId,
    String? accountId,
    String? employeeId,
    String? userId,
    Amount? amount,
    num? collectedAmount,
    num? lastDayCollected,
  }) {
    return DailyCollection(
      id: id ?? this.id,
      branchId: branchId ?? this.branchId,
      accountId: accountId ?? this.accountId,
      employeeId: employeeId ?? this.employeeId,
      userId: userId ?? this.userId,
      amount: amount ?? this.amount,
      collectedAmount: collectedAmount ?? this.collectedAmount,
      lastDayCollected: lastDayCollected ?? this.lastDayCollected,
    );
  }
}
