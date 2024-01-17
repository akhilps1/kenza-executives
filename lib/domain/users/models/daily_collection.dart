// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class DailyCollection {
  DailyCollection({
    required this.amount,
    required this.timestamp,
    required this.offline,
    required this.online,
    required this.withdrow,
    this.id,
  });
  String? id;
  final num amount;
  final num withdrow;
  final num online;
  final num offline;
  final Timestamp timestamp;

  num get remaining => amount - withdrow;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'timestamp': timestamp,
      'withdrow': withdrow,
      'online': online,
      'offline': offline,
    };
  }

  factory DailyCollection.initial() => DailyCollection(
        amount: 0,
        offline: 0,
        online: 0,
        timestamp: Timestamp.now(),
        withdrow: 0,
      );

  factory DailyCollection.fromMap(Map<String, dynamic> map) {
    return DailyCollection(
      amount: map['amount'] as num,
      timestamp: map['timestamp'] as Timestamp,
      withdrow: map['withdrow'] as num,
      offline: map['offline'] as num,
      online: map['online'] as num,
    );
  }

  DailyCollection copyWith({
    String? id,
    num? amount,
    num? withdrow,
    Timestamp? timestamp,
    num? offline,
    num? online,
  }) {
    return DailyCollection(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      offline: offline ?? this.offline,
      online: online ?? this.online,
      withdrow: withdrow ?? this.withdrow,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
