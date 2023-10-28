// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class AccountDetail {
  AccountDetail({
    required this.deposits,
    required this.withdraw,
    required this.createdAt,
    required this.userId,
    required this.branchId,
    required this.accountNo,
    this.id,
  });

  factory AccountDetail.fromMap(Map<String, dynamic> map) {
    return AccountDetail(
      branchId: map['branchId'] as String,
      deposits: map['deposits'] as num,
      withdraw: map['withdraw'] as num,
      createdAt: map['createdAt'] as Timestamp,
      userId: map['userId'] as String,
      accountNo: map['accountNo'] as String,
    );
  }

  final String? id;
  final String userId;
  final num deposits;
  final num withdraw;
  final Timestamp createdAt;
  final String branchId;
  final String accountNo;

  num get remainingBalance => deposits - withdraw;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'deposits': deposits,
      'withdraw': withdraw,
      'createdAt': createdAt,
      'branchId': branchId,
      'accountNo': accountNo,
    };
  }

  AccountDetail copyWith({
    String? id,
    String? userId,
    num? deposits,
    num? withdraw,
    String? branchId,
    Timestamp? createdAt,
    String? accountNo,
  }) {
    return AccountDetail(
      id: id ?? this.id,
      branchId: branchId ?? this.branchId,
      userId: userId ?? this.userId,
      deposits: deposits ?? this.deposits,
      withdraw: withdraw ?? this.withdraw,
      createdAt: createdAt ?? this.createdAt,
      accountNo: accountNo ?? this.accountNo,
    );
  }

  // void chechCompleted() {
  //   final d = createdAt.toDate().difference(DateTime.now()).inDays;

  //   log(d.toString());
  // }

  bool chechCompleted() {
    final now = DateTime.now();
    // ignore: unused_local_variable
    int years = now.year - createdAt.toDate().year;
    int months = now.month - createdAt.toDate().month;
    int days = now.day - createdAt.toDate().day;
    if (months < 0 || (months == 0 && days < 0)) {
      years--;
      months += (days < 0 ? 11 : 12);
    }
    if (days < 0) {
      final monthAgo =
          DateTime(now.year, now.month - 1, createdAt.toDate().day);
      days = now.difference(monthAgo).inDays + 1;
    }

    if (years >= 1) {
      return true;
    }

    if (months >= 11 && days >= 1) {
      log('$years $months month $days days if');
      return true;
    } else {
      log('$years $months month $days days else');
      return false;
    }
  }

  bool chechCompletedSixMonths() {
    final now = DateTime.now();
    // ignore: unused_local_variable
    int years = now.year - createdAt.toDate().year;
    int months = now.month - createdAt.toDate().month;
    int days = now.day - createdAt.toDate().day;
    if (months < 0 || (months == 0 && days < 0)) {
      years--;
      months += (days < 0 ? 11 : 12);
    }
    if (days < 0) {
      final monthAgo =
          DateTime(now.year, now.month - 1, createdAt.toDate().day);
      days = now.difference(monthAgo).inDays + 1;
    }

    if (months >= 6) {
      return true;
    } else {
      return false;
    }
  }
}
