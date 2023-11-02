part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required Username username,
    required bool isLoading,
    required Password password,
    required Option<Executive> succssOption,
    required Option<Unit> logoutSuccessOption,
    required Executive? executive,
    required Option<AuthFailure> failureOption,
    required AutovalidateMode showError,
    required Option<AppUser> authStatusOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isLoading: false,
        username: Username(''),
        password: Password(''),
        executive: null,
        logoutSuccessOption: none(),
        succssOption: none(),
        failureOption: none(),
        authStatusOption: none(),
        showError: AutovalidateMode.disabled,
      );
}
