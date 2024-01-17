// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';

class UserDetails {
  UserDetails({
    required this.imgUrl,
    required this.name,
    required this.refferalCode,
    required this.referredBy,
    required this.phoneNo,
    required this.address,
    required this.ladmark,
    required this.pincode,
    required this.state,
    required this.userName,
    required this.password,
    required this.branchId,
    required this.maxDepositeAmount,
    required this.timestamp,
    required this.token,
    required this.addressType,
    required this.isOffline,
    required this.lastPayment,
    this.cardNumber,
    this.id,
  });

  factory UserDetails.empty() => UserDetails(
        imgUrl: '',
        name: '',
        refferalCode: '',
        referredBy: '',
        phoneNo: '',
        address: '',
        userName: '',
        password: '',
        branchId: '',
        addressType: 0,
        maxDepositeAmount: 0,
        token: '',
        timestamp: Timestamp.now(),
        ladmark: '',
        pincode: '',
        state: '',
        isOffline: null,
        lastPayment: null,
      );

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      id: map['id'] != null ? map['id'] as String : null,
      imgUrl: map['imgUrl'] as String,
      name: map['name'] as String,
      refferalCode: map['refferalCode'] as String,
      phoneNo: map['phoneNo'] as String,
      address: map['address'] as String,
      ladmark: map['ladmark'] as String,
      pincode: map['pincode'] as String,
      state: map['state'] as String,
      userName: map['userName'] as String,
      password: map['password'] as String,
      branchId: map['branchId'] as String,
      referredBy: map['referredBy'] as String,
      token: map['token'] as String,
      cardNumber:
          map['cardNumber'] != null ? map['cardNumber'] as String : null,
      maxDepositeAmount: map['maxDepositeAmount'] as num,
      addressType: map['addressType'] as int,
      timestamp: map['timestamp'] as Timestamp,
      isOffline: map['isOffline'] as bool?,
      lastPayment: map['lastPayment'] != null
          ? LastPayment.fromMap(map['lastPayment'] as Map<String, dynamic>)
          : null,
    );
  }
  final String? id;
  final String imgUrl;
  final String name;
  final String refferalCode;
  final String phoneNo;
  final String address;
  final String ladmark;
  final String pincode;
  final String state;
  final String userName;
  final String password;
  final String branchId;
  final String referredBy;
  final String token;
  final String? cardNumber;

  final num maxDepositeAmount;
  final int addressType;
  final Timestamp timestamp;
  final bool? isOffline;
  final LastPayment? lastPayment;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imgUrl': imgUrl,
      'name': name,
      'refferalCode': refferalCode,
      'phoneNo': phoneNo,
      'address': address,
      'ladmark': ladmark,
      'pincode': pincode,
      'state': state,
      'userName': userName,
      'password': password,
      'branchId': branchId,
      'referredBy': referredBy,
      'token': token,
      'cardNumber': cardNumber,
      'maxDepositeAmount': maxDepositeAmount,
      'addressType': addressType,
      'timestamp': timestamp,
      'isOffline': isOffline,
      'lastPayment': lastPayment?.toMap(),
    };
  }

  UserDetails copyWith({
    String? id,
    String? imgUrl,
    String? name,
    String? refferalCode,
    String? phoneNo,
    String? address,
    String? ladmark,
    String? pincode,
    String? state,
    String? userName,
    String? password,
    String? branchId,
    String? referredBy,
    String? token,
    String? cardNumber,
    num? maxDepositeAmount,
    int? addressType,
    Timestamp? timestamp,
    bool? isOffline,
    LastPayment? lastPayment,
  }) {
    return UserDetails(
      id: id ?? this.id,
      imgUrl: imgUrl ?? this.imgUrl,
      name: name ?? this.name,
      refferalCode: refferalCode ?? this.refferalCode,
      phoneNo: phoneNo ?? this.phoneNo,
      address: address ?? this.address,
      ladmark: ladmark ?? this.ladmark,
      pincode: pincode ?? this.pincode,
      state: state ?? this.state,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      branchId: branchId ?? this.branchId,
      referredBy: referredBy ?? this.referredBy,
      token: token ?? this.token,
      cardNumber: cardNumber ?? this.cardNumber,
      maxDepositeAmount: maxDepositeAmount ?? this.maxDepositeAmount,
      addressType: addressType ?? this.addressType,
      timestamp: timestamp ?? this.timestamp,
      isOffline: isOffline ?? this.isOffline,
      lastPayment: lastPayment ?? this.lastPayment,
    );
  }
}

class LastPayment {
  LastPayment({
    required this.timestamp,
    required this.amount,
  });
  final Timestamp timestamp;
  final num amount;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': timestamp,
      'amount': amount,
    };
  }

  factory LastPayment.fromMap(Map<String, dynamic> map) {
    return LastPayment(
      timestamp: map['timestamp'] as Timestamp,
      amount: map['amount'] as num,
    );
  }

  LastPayment copyWith({
    Timestamp? timestamp,
    num? amount,
  }) {
    return LastPayment(
      timestamp: timestamp ?? this.timestamp,
      amount: amount ?? this.amount,
    );
  }
}
