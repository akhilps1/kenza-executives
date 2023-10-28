import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: lines_longer_than_80_chars
class Executive {
  Executive({
    required this.imgUrl,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.town,
    required this.city,
    required this.district,
    required this.userName,
    required this.password,
    required this.branchId,
    required this.collected,
    required this.paid,
    required this.timestamp,
    required this.isActive,
    this.id,
  });

  factory Executive.fromMap(QueryDocumentSnapshot<Map<String, dynamic>> docs) {
    final map = docs.data();
    return Executive(
      id: docs.id,
      imgUrl: map['imgUrl'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      address: map['address'] as String,
      userName: map['userName'] as String,
      password: map['password'] as String,
      branchId: map['branchId'] as String,
      collected: map['collected'] as num,
      paid: map['paid'] as num,
      timestamp: map['timestamp'] as Timestamp,
      isActive: map['isActive'] as bool,
      town: map['town'] as String,
      city: map['city'] as String,
      district: map['district'] as String,
    );
  }

  bool isActive;

  String? id;
  final String imgUrl;
  final String name;
  final String phoneNumber;
  final String address;
  final String town;
  final String city;
  final String district;
  final String userName;
  final String password;
  final String branchId;

  final num collected;
  final num paid;

  final Timestamp timestamp;

  num get remainingBalace => collected - paid;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imgUrl': imgUrl,
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'userName': userName,
      'password': password,
      'branchId': branchId,
      'collected': collected,
      'paid': paid,
      'timestamp': timestamp,
      'isActive': isActive,
      'town': town,
      'city': city,
      'district': district,
    };
  }

  Executive copyWith({
    String? imgUrl,
    String? name,
    String? phoneNumber,
    String? address,
    String? town,
    String? city,
    String? district,
    String? userName,
    String? password,
    String? branchId,
    num? collected,
    num? paid,
    Timestamp? timestamp,
    bool? isActive,
    String? id,
  }) {
    return Executive(
      id: id ?? this.id,
      imgUrl: imgUrl ?? this.imgUrl,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      town: town ?? this.town,
      city: city ?? this.city,
      district: district ?? this.district,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      branchId: branchId ?? this.branchId,
      collected: collected ?? this.collected,
      paid: paid ?? this.paid,
      timestamp: timestamp ?? this.timestamp,
      isActive: isActive ?? this.isActive,
    );
  }

  factory Executive.fromFireStore(Map<String, dynamic> map) {
    return Executive(
      imgUrl: map['imgUrl'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      address: map['address'] as String,
      town: map['town'] as String,
      city: map['city'] as String,
      district: map['district'] as String,
      userName: map['userName'] as String,
      password: map['password'] as String,
      branchId: map['branchId'] as String,
      collected: map['collected'] as num,
      paid: map['paid'] as num,
      timestamp: map['timestamp'] as Timestamp,
      isActive: map['isActive'] as bool,
    );
  }
}
