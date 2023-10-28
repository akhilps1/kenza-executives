import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:executives/domain/user_details/i_user_details_facade.dart';
import 'package:executives/domain/user_details/models/account_model.dart';
import 'package:executives/domain/user_details/models/transaction.dart';
import 'package:executives/domain/users/failures/value_validator.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

@injectable
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  final IUserDeatailsFacade _iUserDeatailsFacade;
  UserDetailsBloc(this._iUserDeatailsFacade)
      : super(UserDetailsState.initial()) {
    //
    on<GetAllAccounts>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      //
      final failureOrSuccess = await _iUserDeatailsFacade.getUserAccunt(
          userId: event.userId, branchId: event.branchId);

      emit(
        failureOrSuccess.fold(
          (failure) => state.copyWith(isLoading: false),
          (success) {
            add(
              GetAllTransactions(
                userId: event.userId,
                branchId: event.branchId,
              ),
            );
            return state.copyWith(
              account: success,
            );
          },
        ),
      );
    }, transformer: droppable());

    on<GetAllTransactions>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        //
        final failureOrSuccess = await _iUserDeatailsFacade.getTransactions(
          userId: event.userId,
          branchId: event.branchId,
        );

        emit(
          failureOrSuccess.fold(
            (failure) {
              return state.copyWith(isLoading: false);
            },
            (success) {
              return state.copyWith(
                isLoading: false,
                noMoredata: success.length < 15,
                transactions: [
                  ...state.transactions,
                  ...success,
                ],
              );
            },
          ),
        );
      },
    );

    on<ClearUserDetailsData>(
      (event, emit) {
        _iUserDeatailsFacade.clearDoc();
        emit(
          UserDetailsState.initial(),
        );
      },
    );

    on<AmountChanged>(
      (event, emit) => state.copyWith(
        amount: Amount(
          event.amount,
        ),
      ),
    );

    on<GetMonthlyLimit>(
      (event, emit) async {
        final failureOrSuccess =
            await _iUserDeatailsFacade.getMonthlyLimit(event.userDetails);
        failureOrSuccess.fold(
          (_) => null,
          (success) => emit(
            state.copyWith(
              limit: Amount(success),
            ),
          ),
        );
      },
    );
  }
}
