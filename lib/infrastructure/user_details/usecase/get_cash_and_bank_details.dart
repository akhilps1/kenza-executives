import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/user_details/models/cash_and_bank_details.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCashAndBankDetails {
  GetCashAndBankDetails(this.firebaseFirestore);

  final FirebaseFirestore firebaseFirestore;
  Future<Either<UserFailure, CashAndBankDetails>> call(String branchId) async {
    try {
      final result = await firebaseFirestore
          .collection('cash_and_bank')
          .where('branchId', isEqualTo: branchId)
          .limit(1)
          .get();
      if (result.docs.isEmpty) {
        return left(
            UserFailure.cashAndBankNotFount(errorMsg: 'Server failure'));
      }
      return right(CashAndBankDetails.fromMap(result.docs.first.data())
          .copyWith(id: result.docs.first.id));
    } on FirebaseException catch (e) {
      return left(UserFailure.serverFailure(errorMsg: e.code));
    }
  }
}
