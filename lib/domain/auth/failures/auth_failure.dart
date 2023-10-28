import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidCredentials({
    required String errorMsg,
  }) = _InvalidCredentials;
  const factory AuthFailure.serverFailure({
    required String errorMsg,
  }) = _ServerFailure;

  const factory AuthFailure.notAuthenticated() = _NotAuthenticated;
}
