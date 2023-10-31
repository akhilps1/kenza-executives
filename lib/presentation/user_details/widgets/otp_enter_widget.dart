import 'package:executives/application/core/constants.dart';
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/core/utils/theme/themes.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/user_details/widgets/otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpEnterWidget extends StatelessWidget {
  const OtpEnterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpVerificationCubit, OtpVerificationState>(
      listener: (context, state) {
        state.otpVerifyFailureOrSuccess.fold(
          () => null,
          (failureOrSuccess) {
            failureOrSuccess.fold(
              (f) {
                f.maybeMap(
                  orElse: () {},
                  serverFailure: (value) {
                    CustomToast.errorToast(
                      message: value.errorMsg,
                    );
                  },
                );
                context.read<OtpVerificationCubit>().clearFailure();
              },
              (r) {
                Navigator.pop(context);
                CustomToast.successToast(message: 'Account Renewed');
              },
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        height: context.getsize.height * 0.28,
        decoration: const BoxDecoration(
          color: AppColor.bgWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kSizedBoxH10,
            const Opacity(
              opacity: 0.90,
              child: Text(
                'OTP Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            kSizedBoxH10,
            kSizedBoxH10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 55,
                  width: context.getsize.width * 0.92,
                  child: OtpWidget(
                    defaultPinTheme: AppTheam.defaultPinThemeBlack,
                    focusedPinTheme: AppTheam.focusedPinThemeBlack,
                    submittedPinTheme: AppTheam.submittedPinThemeBlack,
                    onCompleted: (value) {},
                  ),
                ),
              ],
            ),
            kSizedBoxH10,
            kSizedBoxH10,
            kSizedBoxH10,
            SizedBox(
              width: context.getsize.width - 30,
              child: BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      if (state.smsCode.isNotEmpty) {
                        context.read<OtpVerificationCubit>().verifySmsCode();
                      }
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        AppColor.primaryColor,
                      ),
                    ),
                    child: state.isInProgress == false
                        ? const Text(
                            'Verify',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        : const CustomCircularProgress(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
