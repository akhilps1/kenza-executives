import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:executives/application/transactions/employee_detais/get_emloyee_details_cubit.dart';
import 'package:executives/domain/core/di/injection.dart';
import 'package:executives/domain/users/models/daily_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:executives/domain/transactions/i_transaction_facade.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:executives/domain/users/failures/value_validator.dart';

part 'transactions_bloc.freezed.dart';
part 'transactions_event.dart';
part 'transactions_state.dart';

@injectable
class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final ITransactionFacade _transactionFacade;

  TransactionsBloc(this._transactionFacade)
      : super(TransactionsState.initial()) {
    on<DateRangeChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            dateRange: event.range,
          ),
        );
      },
    );
    on<GetAllTransactions>(
      (event, emit) async {
        emit(
          state.copyWith(isLoading: true),
        );

        final failureOrSuccess = await _transactionFacade.getAllTransactions(
          employeeId: event.employeeId,
          branchId: event.branchId,
        );

        emit(
          failureOrSuccess.fold(
            (_) => state.copyWith(
              isLoading: false,
            ),
            (transactions) => state.copyWith(
              isLoading: false,
              noMoredata: transactions.length < 15,
              transactions: [...state.transactions, ...transactions],
            ),
          ),
        );
      },
      transformer: droppable(),
    );

    on<RefreshTransaction>(
      (event, emit) async {
        final failureOrSuccess = await _transactionFacade.refreshTransactions(
          employeeId: event.employeeId,
          branchId: event.branchId,
        );

        emit(
          failureOrSuccess.fold(
            (_) {
              CustomToast.errorToast(message: 'Nothing to show');
              return state.copyWith(
                isLoading: false,
              );
            },
            (transactions) => state.copyWith(
              isLoading: false,
              noMoredata: transactions.length < 15,
              transactions: [...transactions, ...state.transactions],
            ),
          ),
        );
      },
      transformer: droppable(),
    );

    on<SearchTearmChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            searchTeram: SearchTeram(event.searchTearm),
          ),
        );
      },
    );

    on<SearchClicked>(
      (event, emit) async {
        final vaildSearchTearm = state.searchTeram.isValid();

        if (!vaildSearchTearm) {
          CustomToast.errorToast(message: 'Enter somthig to search');
        } else {
          emit(
            state.copyWith(isLoading: true),
          );
          final failureOrSuccess = await _transactionFacade.searchTransaction(
            employeeId: event.employeeId,
            branchId: event.branchId,
            searchTearm: state.searchTeram.getOrCrash(),
          );

          failureOrSuccess.fold(
            (f) {
              f.maybeMap(
                orElse: () {},
                notFount: (value) {
                  CustomToast.errorToast(message: value.errorMsg);
                },
                serverFailure: (value) {
                  CustomToast.errorToast(message: value.errorMsg);
                },
              );
              emit(
                state.copyWith(isLoading: false),
              );
            },
            (transactions) {
              emit(
                state.copyWith(
                  searchItems: [...state.searchItems, ...transactions],
                  isLoading: false,
                ),
              );
            },
          );
        }
      },
      transformer: restartable(),
    );

    on<ClearSearch>(
      (event, emit) {
        _transactionFacade.clearSearch();
        emit(
          state.copyWith(
            searchItems: [],
            searchTeram: SearchTeram(''),
            isLoading: false,
          ),
        );
      },
    );
    on<CancelDateRange>(
      (event, emit) => emit(
        state.copyWith(
          dateRange: null,
        ),
      ),
    );
    on<ClearTransaction>(
      (event, emit) {
        _transactionFacade.clear();
      },
    );
    on<DateRangeApplied>(
      (event, emit) async {
        if (state.dateRange != null &&
            state.dateRange!.startDate != null &&
            state.dateRange!.endDate != null) {
          add(
            _GetCollectionAmount(
              dateRange: state.dateRange!,
              employeeId: event.employeeId,
            ),
          );
          emit(
            state.copyWith(
              isLoading: true,
              transactions: [],
            ),
          );

          final failureOrSuccess =
              await _transactionFacade.getTransactionByDateRange(
            employeeId: event.employeeId,
            branchId: event.branchId,
            dateRange: state.dateRange!,
          );

          failureOrSuccess.fold(
            (l) => emit(
              state.copyWith(
                isLoading: false,
              ),
            ),
            (transactions) => emit(
              state.copyWith(
                isLoading: false,
                transactions: [...state.transactions, ...transactions],
              ),
            ),
          );
        } else {
          CustomToast.errorToast(message: 'Please select a date range');
        }
      },
      transformer: restartable(),
    );

    on<_GetCollectionAmount>(
      (event, emit) async {
        log('worked');
        final failureOrSuccess = await _transactionFacade.getCollectionAmount(
          employeeId: event.employeeId,
          dateRange: event.dateRange,
        );

        failureOrSuccess.fold(
          (l) {},
          (collections) {
            final amountCollected = collections.reduce(
              (value, element) => DailyCollection(
                amount: value.amount + element.amount,
                timestamp: Timestamp.now(),
              ),
            );

            emit(
              state.copyWith(
                dailyCollection: amountCollected,
              ),
            );
          },
        );
      },
      transformer: restartable(),
    );

    on<GetTotalAmoutCollected>(
      (event, emit) => emit(
        state.copyWith(
          dailyCollection: event.collection,
        ),
      ),
    );

    on<ClearDateRange>(
      (event, emit) {
        _transactionFacade.clear();

        emit(
          state.copyWith(
            dailyCollection: null,
            dateRange: null,
            transactions: [],
          ),
        );
        add(
          GetAllTransactions(
            branchId: event.branchId,
            employeeId: event.employeeId,
          ),
        );
      },
    );

    on<ClearTransactionData>((event, emit) {
      _transactionFacade.clear();
      _transactionFacade.clearSearch();
      emit(
        TransactionsState.initial(),
      );
    });
  }
}
