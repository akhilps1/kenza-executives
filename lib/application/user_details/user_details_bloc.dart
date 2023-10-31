import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:executives/domain/core/serveice/keywords_generater.dart';
import 'package:executives/domain/user_details/i_user_details_facade.dart';
import 'package:executives/domain/user_details/models/account_model.dart';
import 'package:executives/domain/user_details/models/daily_collection.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
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
    on<CreateNewAccount>(
      (event, emit) async {
        //
        final validatedAmount = state.amount.value.isRight();

        if (!validatedAmount) {
          emit(
            state.copyWith(
              showError: AutovalidateMode.always,
            ),
          );
        } else {
          emit(
            state.copyWith(firebaseLoading: true),
          );
          final failureOrSuccess = await _iUserDeatailsFacade.createNewAccount(
            account: AccountDetail(
              deposits: 0,
              withdraw: 0,
              createdAt: Timestamp.now(),
              userId: event.userDetails.id!,
              branchId: event.userDetails.branchId,
              accountNo: event.userDetails.refferalCode,
            ),
          );

          failureOrSuccess.fold(
            (failure) => null,
            (success) {
              emit(
                state.copyWith(
                  account: success,
                ),
              );
              add(
                ReceveAmount(
                  userDetails: event.userDetails,
                  employeeId: event.employeeId,
                ),
              );
            },
          );
        }
      },
    );
    //
    on<GetAllAccounts>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      //
      final failureOrSuccess = await _iUserDeatailsFacade.getUserAccunt(
        userId: event.userId,
        branchId: event.branchId,
      );

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
      (event, emit) => emit(
        state.copyWith(
          amount: Amount(
            event.amount,
          ),
        ),
      ),
    );

    on<NoteChanged>(
      (event, emit) => state.copyWith(
        note: event.note,
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
              limit: success,
            ),
          ),
        );
      },
    );

    on<ReceveAmount>(
      (event, emit) async {
        final validatedAmount = state.amount.value.isRight();

        if (!validatedAmount) {
          emit(
            state.copyWith(
              showError: AutovalidateMode.always,
            ),
          );
        } else {
          final dailyCollection = DailyCollectionDetails(
            branchId: event.userDetails.branchId,
            accountId: state.account!.id!,
            employeeId: event.employeeId,
            userId: event.userDetails.id!,
            amount: state.amount.getOrCrash(),
            collectedAmount: state.amount.getOrCrash(),
            lastDayCollected: 0,
          );
          //
          if (state.account?.chechCompletedSixMonths() == false) {
            emit(
              state.copyWith(firebaseLoading: true),
            );
            final failureOrSuccess = await _iUserDeatailsFacade.updateAmount(
              collection: dailyCollection,
            );

            failureOrSuccess.fold(
              (l) {
                emit(
                  state.copyWith(
                    firebaseLoading: false,
                  ),
                );
              },
              (r) {
                emit(
                  state.copyWith(
                    limit: state.limit - state.amount.getOrCrash(),
                  ),
                );

                add(
                  _AddTransaction(
                    userDetails: event.userDetails,
                    dailyCollectionDetails: dailyCollection,
                  ),
                );
              },
            );
          } else if (state.account?.chechCompletedSixMonths() == true &&
              state.amount.getOrCrash() <= state.limit) {
            emit(
              state.copyWith(firebaseLoading: true),
            );
            //
            final failureOrSuccess = await _iUserDeatailsFacade.updateAmount(
              collection: dailyCollection,
            );

            failureOrSuccess.fold(
              (l) {
                emit(
                  state.copyWith(
                    firebaseLoading: false,
                  ),
                );
              },
              (r) {
                emit(
                  state.copyWith(
                    limit: state.limit - state.amount.getOrCrash(),
                  ),
                );
                add(
                  _AddTransaction(
                    userDetails: event.userDetails,
                    dailyCollectionDetails: dailyCollection,
                  ),
                );
              },
            );
          } else {
            CustomToast.errorToast(
              message: 'Youre remaining monthly limit is ${state.limit}',
              preferDirection: PreferDirection.topCenter,
            );
          }
        }
      },
      transformer: droppable(),
    );

    on<FirstTimePayment>(
      (event, emit) => emit(
        state.copyWith(
          firstTime: event.firstTime,
        ),
      ),
    );

    on<_AddTransaction>(
      (event, emit) async {
        final failureOrSuccess = await _iUserDeatailsFacade.addTransaction(
          TransactionDetails(
            userDetails: event.userDetails,
            amount: event.dailyCollectionDetails.amount,
            note: state.note,
            status: 1,
            branchId: event.dailyCollectionDetails.branchId,
            employeeId: event.dailyCollectionDetails.employeeId,
            accountId: event.dailyCollectionDetails.accountId,
            keywords: [
              ...getKeywords(event.userDetails.phoneNo),
            ],
            transactionType: 0,
            referrerId: '',
            referredBy:
                state.firstTime == true ? event.userDetails.referredBy : '',
            timestamp: Timestamp.now(),
            show: true,
          ),
        );

        failureOrSuccess.fold(
          (l) => null,
          (success) {
            emit(
              state.copyWith(
                firebaseLoading: false,
                transactions: [
                  success,
                  ...state.transactions,
                ],
                firstTime: false,
                successOption: some(success),
              ),
            );
          },
        );
      },
    );
  }
}
