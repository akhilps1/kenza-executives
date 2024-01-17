class PaymentKeys {
  PaymentKeys({
    required this.marchatUat,
    required this.saltIndex,
    required this.saltKey,
    required this.upiId,
  });

  factory PaymentKeys.fromMap(Map<String, dynamic> map) {
    return PaymentKeys(
      marchatUat: map['marchatUat'] as String,
      saltKey: map['saltKey'] as String,
      saltIndex: map['saltIndex'] as String,
      upiId: map['upiId'] as String,
    );
  }

  final String marchatUat;
  final String saltKey;
  final String saltIndex;
  final String upiId;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marchatUat': marchatUat,
      'saltKey': saltKey,
      'saltIndex': saltIndex,
      'upiId': upiId,
    };
  }
}
