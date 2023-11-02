part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userNameChanged(String value) = UserNameChanged;
  const factory AuthEvent.passwordChanged(String value) = PasswordChanged;
  const factory AuthEvent.loginClicked() = LoginClicked;
  const factory AuthEvent.checkloginStatus() = checkLoginStatus;
  const factory AuthEvent.validateEmployee(AppUser appUser) = _ValidateEmployee;
  const factory AuthEvent.clearFailure() = ClearFailure;
  const factory AuthEvent.employyeDetailsUpdated(Executive executive) =
      EmployyeDetailsUpdated;
  const factory AuthEvent.logOut() = Logout;
  const factory AuthEvent.clearAuth() = ClearAuth;
}
