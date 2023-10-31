import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:executives/domain/users/failures/value_validator.dart';
import 'package:executives/domain/users/i_user_facade.dart';
import 'package:executives/domain/users/models/employee_daily_collection.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserFacade _iUserFacade;

  UserBloc(this._iUserFacade) : super(UserState.initial()) {
    //
    on<SerchTearmChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            searchTeram: SearchTeram(event.value),
          ),
        );
      },
    );

    //
    on<SearchClicked>(
      (event, emit) async {
        final vaildSearchTerm = state.searchTeram.isValid();

        if (!vaildSearchTerm) {
          CustomToast.errorToast(message: 'Seach tearm cannot be empty');
        } else {
          _iUserFacade.clearData();
          emit(state.copyWith(
            isLoading: true,
            users: [],
          ));

          final failureOrSuccess = await _iUserFacade.serachUser(
            branchId: event.branchId,
            searchTeram: state.searchTeram,
          );

          emit(
            failureOrSuccess.fold(
              (failures) {
                failures.maybeMap(
                  orElse: () {},
                  serverFailure: (failure) {
                    CustomToast.errorToast(message: failure.errorMsg);
                  },
                  userNotFount: (failure) {
                    CustomToast.errorToast(message: failure.errorMsg);
                  },
                );
                return state.copyWith(isLoading: false);
              },
              (success) {
                return state.copyWith(
                  users: [success],
                  isLoading: false,
                );
              },
            ),
          );
        }
      },
    );

    //
    on<GetAllusers>(
      (event, emit) async {
        log('worked');
        emit(
          state.copyWith(
            isLoading: true,
          ),
        );
        final failureOrSuccess = await _iUserFacade.getAllUsers(event.branchId);

        emit(
          failureOrSuccess.fold(
            (failure) => state.copyWith(isLoading: false),
            (success) => state.copyWith(
              isLoading: false,
              noMoreData: success.length < 10,
              users: [
                ...state.users,
                ...success,
              ],
            ),
          ),
        );
      },
      transformer: droppable(),
    );

    on<GetEmployeeDailyCollection>(
      (event, emit) async {
        final failureOrSuccess = await _iUserFacade.getEmployeeDailyCollection(
          employeeId: event.employeeId,
        );

        failureOrSuccess.fold(
          (l) => null,
          (success) {
            emit(
              state.copyWith(
                dailyCollection: success,
              ),
            );
          },
        );
      },
    );

    on<GetBranchDailyCollection>(
      (event, emit) async {
        final failureOrSuccess = await _iUserFacade.getBranchDailyCollection(
          branchId: event.branchId,
        );

        failureOrSuccess.fold(
          (l) => null,
          (success) {
            emit(
              state.copyWith(
                branchdailyCollection: success,
              ),
            );
          },
        );
      },
    );

    on<ClearUserData>(
      (event, emit) {
        _iUserFacade.clearData();
        emit(UserState.initial());
      },
    );

    on<ClearUserFailure>(
      (event, emit) => emit(
        state.copyWith(
          failureOption: none(),
        ),
      ),
    );
  }
}
