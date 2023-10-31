import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:executives/domain/core/di/injection.dart';
import 'package:executives/domain/user_details/i_user_details_facade.dart';
import 'package:executives/domain/users/failures/user_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otp_verification_state.dart';
part 'otp_verification_cubit.freezed.dart';

@injectable
class OtpVerificationCubit extends Cubit<OtpVerificationState> {
  late final IUserDeatailsFacade _iUserDeatailsFacade;
  StreamSubscription<Either<UserFailure, String>>?
      _phoneNumberSignInSubscription;

  OtpVerificationCubit() : super(OtpVerificationState.initial()) {
    _iUserDeatailsFacade = sl<IUserDeatailsFacade>();
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();
    return super.close();
  }

  void optChanged(String value) {
    emit(state.copyWith(smsCode: value));
  }

  void veryfyPhoneNo(String phoneNo) {
    emit(
      state.copyWith(
        isInProgress: true,
        failureOption: none(),
      ),
    );

    _phoneNumberSignInSubscription =
        _iUserDeatailsFacade.verifyUser(phoneNumber: phoneNo).listen(
              (Either<UserFailure, String> failureOrVerificationId) =>
                  failureOrVerificationId.fold(
                (failure) {
                  //This is the part where we receive failures like 'invalidPhoneNumber', 'smsTimeout' etc.
                  log(failure.errorMsg);
                  emit(
                    state.copyWith(
                      failureOption: some(failure),
                      isInProgress: false,
                    ),
                  );
                },
                (verificationId) {
                  // Catch this in Bloc Listener and take the user to SMS code entry page.
                  log(verificationId);

                  emit(
                    state.copyWith(
                      verificationIdOption: some(verificationId),
                      verificationId: verificationId,
                      isInProgress: false,
                    ),
                  );
                },
              ),
            );
  }

  void verifySmsCode() {
    state.verificationIdOption.fold(
      () {
        //Verification id does not exist. This should not happen.
      },
      (String verificationId) async {
        emit(
          state.copyWith(
            isInProgress: true,
            failureOption: none(),
          ),
        );

        final Either<UserFailure, Unit> failureOrSuccess =
            await _iUserDeatailsFacade.verifySmsCode(
          smsCode: state.smsCode,
          verificationId: verificationId,
        );
        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isInProgress: false,
                otpVerifyFailureOrSuccess: some(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isInProgress: false,
                otpVerifySuccess: some(r),
                otpVerifyFailureOrSuccess: some(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }

  void clearFailure() {
    emit(
      state.copyWith(
        failureOption: none(),
        otpVerifyFailureOrSuccess: none(),
      ),
    );
  }

  void clear() {
    emit(OtpVerificationState.initial());
  }
}
