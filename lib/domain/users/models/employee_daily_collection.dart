// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class DailyCollection {
  DailyCollection({
    required this.amount,
    required this.timestamp,
    this.id,
  });
  String? id;
  final num amount;
  final Timestamp timestamp;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'timestamp': timestamp,
    };
  }

  factory DailyCollection.fromMap(Map<String, dynamic> map) {
    return DailyCollection(
      amount: map['amount'] as num,
      timestamp: map['timestamp'] as Timestamp,
    );
  }

  DailyCollection copyWith({
    String? id,
    num? amount,
    Timestamp? timestamp,
  }) {
    return DailyCollection(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
