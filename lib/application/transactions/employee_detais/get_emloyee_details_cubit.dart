import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:executives/domain/auth/models/executive.dart';
import 'package:executives/domain/transactions/i_transaction_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_emloyee_details_state.dart';
part 'get_emloyee_details_cubit.freezed.dart';

@injectable
class GetEmloyeeDetailsCubit extends Cubit<GetEmloyeeDetailsState> {
  final ITransactionFacade _transactionFacade;

  StreamSubscription<Executive>? _streamSubscription;

  GetEmloyeeDetailsCubit(this._transactionFacade)
      : super(GetEmloyeeDetailsState.initial());

  void getEmployeeDetails(String employeeId) {
    _streamSubscription =
        _transactionFacade.getEmployeeDetails(employeeId: employeeId).listen(
      (event) {
        emit(
          state.copyWith(executive: event),
        );
      },
    );
  }

  void clear() {
    emit(GetEmloyeeDetailsState.initial());
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
