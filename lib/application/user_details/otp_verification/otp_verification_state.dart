part of 'otp_verification_cubit.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required String smsCode,
    required String verificationId,
    required Option<UserFailure> failureOption,
    required Option<String> verificationIdOption,
    required bool isInProgress,
    required Option<Either<UserFailure, Unit>> otpVerifyFailureOrSuccess,
    required Option<Unit> otpVerifySuccess,
  }) = _OtpVerificationState;

  factory OtpVerificationState.initial() => OtpVerificationState(
        smsCode: '',
        failureOption: none(),
        verificationIdOption: none(),
        verificationId: '',
        otpVerifySuccess: none(),
        isInProgress: false,
        otpVerifyFailureOrSuccess: none(),
      );
}
