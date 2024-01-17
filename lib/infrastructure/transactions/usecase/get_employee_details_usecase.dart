import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:executives/domain/auth/models/executive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetEmloyeeDetails {
  GetEmloyeeDetails(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Stream<Executive> getEmployeeDetails({
    required String employeeId,
  }) async* {
    final streamController = StreamController<Executive>();

    _firebaseFirestore
        .collection('executive')
        .doc(employeeId)
        .snapshots()
        .listen(
      (event) {
        if (event.data() != null) {
          streamController.add(
            Executive.fromFireStore(event.data()!).copyWith(id: event.id),
          );
        }
      },
    );

    yield* streamController.stream;
  }
}
