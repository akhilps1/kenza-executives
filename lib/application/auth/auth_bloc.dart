import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/auth/failures/auth_failure.dart';
import 'package:executives/domain/auth/failures/value_validater.dart';
import 'package:executives/domain/auth/i_auth_facade.dart';
import 'package:executives/domain/auth/models/app_user.dart';
import 'package:executives/domain/auth/models/executive.dart';
import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacde _authFacde;

  AuthBloc(this._authFacde) : super(AuthState.initial()) {
    on<UserNameChanged>((event, emit) {
      emit(
        state.copyWith(
          username: Username(event.value),
        ),
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: Password(event.value),
        ),
      );
    });

    on<checkLoginStatus>(
      (event, emit) {
        final failureOrSuccess = _authFacde.checkAuthStatus();
        failureOrSuccess.fold(
          (failure) {
            emit(
              state.copyWith(failureOption: some(failure)),
            );
          },
          (success) {
            add(
              _ValidateEmployee(success),
            );
          },
        );
      },
    );

    on<_ValidateEmployee>(
      (event, emit) async {
        final failureOrSuccess = await _authFacde.getEmployee(
          username: Username(event.appUser.userName),
          password: Password(event.appUser.password),
        );

        emit(
          failureOrSuccess.fold(
            (failure) => state.copyWith(
              failureOption: some(
                failure,
              ),
            ),
            (success) => state.copyWith(
              succssOption: some(
                success,
              ),
              executive: success,
            ),
          ),
        );
      },
    );

    on<LoginClicked>(
      (event, emit) async {
        final validUserName = state.username.isValid();
        final validPassword = state.password.isValid();

        if (!validPassword || !validUserName) {
          emit(
            state.copyWith(
              showError: AutovalidateMode.always,
            ),
          );
        } else {
          emit(
            state.copyWith(isLoading: true),
          );
          final failureOrSuccess = await _authFacde.getEmployee(
            username: state.username,
            password: state.password,
          );

          emit(
            failureOrSuccess.fold(
              (failure) => state.copyWith(
                failureOption: some(
                  failure,
                ),
                isLoading: false,
              ),
              (success) => state.copyWith(
                succssOption: some(
                  success,
                ),
                executive: success,
                isLoading: false,
              ),
            ),
          );
        }
      },
    );

    on<ClearFailure>(
      (event, emit) => emit(
        state.copyWith(
          failureOption: none(),
        ),
      ),
    );

    on<Logout>(
      (event, emit) async {
        final failureOrSuccess = await _authFacde.logOut();

        failureOrSuccess.fold(
          (l) => CustomToast.errorToast(message: 'Somthig went wrong'),
          (r) {
            emit(
              state.copyWith(
                logoutSuccessOption: some(r),
              ),
            );
          },
        );
      },
    );
    on<ClearAuth>(
      (event, emit) => emit(
        AuthState.initial(),
      ),
    );
  }
}
