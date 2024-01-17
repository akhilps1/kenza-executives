import 'package:executives/domain/users/models/user_details.dart';

class DailyCollectionDetails {
  String? id;
  final String branchId;
  final String accountId;
  final String employeeId;
  final String userId;
  final num amount;
  final num collectedAmount;
  final num lastDayCollected;
  final UserDetails userDetails;

  DailyCollectionDetails({
    required this.branchId,
    required this.accountId,
    required this.employeeId,
    required this.userId,
    required this.amount,
    required this.collectedAmount,
    required this.lastDayCollected,
    required this.userDetails,
    this.id,
  });

  DailyCollectionDetails copyWith({
    String? id,
    String? branchId,
    String? accountId,
    String? employeeId,
    String? userId,
    num? amount,
    num? collectedAmount,
    num? lastDayCollected,
    UserDetails? userDetails,
  }) {
    return DailyCollectionDetails(
      userDetails: userDetails ?? this.userDetails,
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
