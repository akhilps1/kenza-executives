import 'dart:developer';

import 'package:executives/application/core/constants.dart';
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:executives/domain/core/serveice/progress_dialog.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/user_details/user_details.dart';
import 'package:executives/presentation/user_details/widgets/otp_enter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomOtpDialog extends StatelessWidget {
  const CustomOtpDialog({
    required this.animationController,
    required this.userDetails,
    super.key,
  });

  final AnimationController animationController;
  final UserDetails userDetails;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpVerificationCubit, OtpVerificationState>(
      listener: (context, state) {
        state.failureOption.fold(
          () => null,
          (f) {
            Navigator.pop<CustomOtpDialog>(context);
            Navigator.pop<CustomOtpDialog>(context);
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
        );
        state.verificationIdOption.fold(
          () => null,
          (id) {
            Navigator.pop<CustomOtpDialog>(context);
            Navigator.pop<CustomOtpDialog>(context);
            showModalBottomSheet(
              context: context,
              transitionAnimationController: animationController,
              isScrollControlled: true,
              builder: (context) => Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: const Material(
                  type: MaterialType.transparency,
                  child: OtpEnterWidget(),
                ),
              ),
            );
          },
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 290,
            height: 120,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Opacity(
                  opacity: 0.70,
                  child: Text(
                    'Send An OTP To This Customer?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const SizedBox(
                        height: 30,
                        width: 40,
                        child: Center(child: Text('No')),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        showProgress<UserDetailsScreen>(context);
                        context
                            .read<OtpVerificationCubit>()
                            .veryfyPhoneNo(userDetails.phoneNo);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: const Color(0xFFDADADA),
                        ),
                        height: 30,
                        width: 50,
                        child: const Center(
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kSizedBoxH10,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
