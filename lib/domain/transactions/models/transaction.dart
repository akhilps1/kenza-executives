// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:executives/domain/core/utils/enums/enums.dart';
import 'package:executives/domain/users/models/user_details.dart';

class TransactionDetails {
  TransactionDetails({
    required this.amount,
    required this.note,
    required this.status,
    required this.branchId,
    required this.employeeId,
    required this.accountId,
    required this.keywords,
    required this.transactionType,
    required this.referrerId,
    required this.modeOfPay,
    required this.referredBy,
    required this.timestamp,
    required this.show,
    required this.userDetails,
    this.isCashAndBank,
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
      modeOfPay: map['modeOfPay'] as int,
      id: map['transactionId'] as String?,
      isCashAndBank: map['isCashAndBank'] as bool?,
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
  final int modeOfPay;
  final String referredBy;
  final bool show;
  final bool? isCashAndBank;

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

  // ModeOfPay get getModeOfPay {
  //   switch (modeOfPay) {
  //     case 2:
  //       return ModeOfPay.executive;
  //     case 1:
  //       return ModeOfPay.branch;
  //     case 0:
  //     default:
  //       return ModeOfPay.self;
  //   }
  // }

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
      'modeOfPay': modeOfPay,
      'isCashAndBank': isCashAndBank,
    };
  }

  TransactionDetails copyWith({
    String? id,
    Timestamp? timestamp,
    UserDetails? userDetails,
    String? accountId,
    String? note,
    num? amount,
    String? referrerId,
    int? status,
    String? branchId,
    String? employeeId,
    List<String>? keywords,
    int? transactionType,
    int? modeOfPay,
    String? referredBy,
    bool? show,
  }) {
    return TransactionDetails(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      userDetails: userDetails ?? this.userDetails,
      accountId: accountId ?? this.accountId,
      note: note ?? this.note,
      amount: amount ?? this.amount,
      referrerId: referrerId ?? this.referrerId,
      status: status ?? this.status,
      branchId: branchId ?? this.branchId,
      employeeId: employeeId ?? this.employeeId,
      keywords: keywords ?? this.keywords,
      transactionType: transactionType ?? this.transactionType,
      modeOfPay: modeOfPay ?? this.modeOfPay,
      referredBy: referredBy ?? this.referredBy,
      show: show ?? this.show,
    );
  }
}
