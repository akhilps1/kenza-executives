// ignore_for_file: public_member_api_docs, sort_constructors_first

class CashAndBankDetails {
  CashAndBankDetails({
    required this.bankBalance,
    required this.cashBalance,
    required this.branchId,
    this.id,
  });
  final String? id;
  final num cashBalance;
  final num bankBalance;
  final String branchId;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cashBalance': cashBalance,
      'bankBalance': bankBalance,
      'branchId': branchId,
    };
  }

  factory CashAndBankDetails.initial() => CashAndBankDetails(
        bankBalance: 0,
        cashBalance: 0,
        branchId: '',
      );

  factory CashAndBankDetails.fromMap(Map<String, dynamic> map) {
    return CashAndBankDetails(
      cashBalance: map['cashBalance'] as num,
      bankBalance: map['bankBalance'] as num,
      branchId: map['branchId'] as String,
    );
  }

  num get totalBalance => bankBalance + cashBalance;

  CashAndBankDetails copyWith({
    num? cashBalance,
    num? bankBalance,
    String? branchId,
    String? id,
  }) {
    return CashAndBankDetails(
      cashBalance: cashBalance ?? this.cashBalance,
      bankBalance: bankBalance ?? this.bankBalance,
      branchId: branchId ?? this.branchId,
      id: id ?? this.id,
    );
  }
}
