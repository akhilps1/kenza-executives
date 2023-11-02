class DailyCollectionDetails {
  String? id;
  final String branchId;
  final String accountId;
  final String employeeId;
  final String userId;
  final num amount;
  final num collectedAmount;
  final num lastDayCollected;
  DailyCollectionDetails({
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
      'amount': amount,
      'collectedAmount': collectedAmount,
      'lastDayCollected': lastDayCollected,
    };
  }

  factory DailyCollectionDetails.fromMap(Map<String, dynamic> map) {
    return DailyCollectionDetails(
      id: map['id'] != null ? map['id'] as String : null,
      branchId: map['branchId'] as String,
      accountId: map['accountId'] as String,
      employeeId: map['employeeId'] as String,
      userId: map['userId'] as String,
      amount: map['amount'] as num,
      collectedAmount: map['collectedAmount'] as num,
      lastDayCollected: map['lastDayCollected'] as num,
    );
  }

  DailyCollectionDetails copyWith({
    String? id,
    String? branchId,
    String? accountId,
    String? employeeId,
    String? userId,
    num? amount,
    num? collectedAmount,
    num? lastDayCollected,
  }) {
    return DailyCollectionDetails(
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
