import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:executives/domain/core/utils/enums/enums.dart';
import 'package:executives/domain/users/models/user_details.dart';

class TransactionDetails {
  TransactionDetails({
    required this.userDetails,
    required this.amount,
    required this.note,
    required this.status,
    required this.branchId,
    required this.employeeId,
    required this.accountId,
    required this.keywords,
    required this.transactionType,
    required this.referrerId,
    required this.referredBy,
    required this.timestamp,
    required this.show,
    this.id,
  });

  factory TransactionDetails.fromMap(Map<String, dynamic> map) {
    return TransactionDetails(
      branchId: map['branchId'] as String,
      employeeId: map['employeeId'] as String,
      transactionType: map['transactionType'] as int,
      referredBy: map['referredBy'] as String,
      referrerId: map['referrerId'] as String,
      timestamp: map['timestamp'] as Timestamp,
      show: map['show'] as bool,
      userDetails:
          UserDetails.fromMap(map['userDetails'] as Map<String, dynamic>),
      amount: map['amount'] as num,
      keywords: List.from((map['keywords'] as List).map((e) => e as String)),
      note: map['note'] as String,
      status: map['status'] as int,
      accountId: map['accountId'] as String,
      id: map['transactionId'] as String?,
    );
  }
  final String? id;
  final Timestamp timestamp;
  final UserDetails userDetails;
  final String accountId;
  final String note;
  final num amount;
  final String referrerId;
  final int status;
  final String branchId;
  final String employeeId;
  final List<String> keywords;
  final int transactionType;
  final String referredBy;
  final bool show;

  TransactionStatus get getTransactinStatus {
    switch (status) {
      case 1:
        return TransactionStatus.offline;

      case 0:
      default:
        return TransactionStatus.online;
    }
  }

  TransactionType get getTransactinType {
    switch (transactionType) {
      case 1:
        return TransactionType.debit;

      case 0:
      default:
        return TransactionType.credit;
    }
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'transactionId': id,
      'userDetails': userDetails.toMap(),
      'accountId': accountId,
      'amount': amount,
      'referredBy': referredBy,
      'transactionType': transactionType,
      'keywords': keywords,
      'note': note,
      'status': status,
      'branchId': branchId,
      'employeeId': employeeId,
      'timestamp': timestamp,
      'show': show,
      'referrerId': referrerId,
    };
  }

  TransactionDetails copyWith({
    String? id,
    UserDetails? userDetails,
    num? amount,
    String? note,
    int? status,
    String? branchId,
    String? employeeId,
    String? accountId,
    int? transactionType,
    String? referrerId,
    List<String>? keywords,
    Timestamp? timestamp,
    String? referredBy,
    bool? show,
  }) {
    return TransactionDetails(
      id: id ?? this.id,
      show: show ?? this.show,
      timestamp: timestamp ?? this.timestamp,
      referrerId: referrerId ?? this.referrerId,
      transactionType: transactionType ?? this.transactionType,
      referredBy: referredBy ?? this.referredBy,
      userDetails: userDetails ?? this.userDetails,
      keywords: keywords ?? this.keywords,
      amount: amount ?? this.amount,
      note: note ?? this.note,
      status: status ?? this.status,
      branchId: branchId ?? this.branchId,
      employeeId: employeeId ?? this.employeeId,
      accountId: accountId ?? this.accountId,
    );
  }
}
