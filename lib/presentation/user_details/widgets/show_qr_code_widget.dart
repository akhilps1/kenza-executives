import 'package:executives/application/core/constants.dart';
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShowQRCodeDialog extends StatelessWidget {
  const ShowQRCodeDialog({
    required this.animationController,
    required this.userDetails,
    required this.paymentDetails,
    super.key,
  });

  final AnimationController animationController;
  final UserDetails userDetails;
  final String paymentDetails;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Opacity(
                  opacity: 0.70,
                  child: Text(
                    'Scan And Pay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                QrImageView(
                  data: paymentDetails,
                  version: QrVersions.auto,
                  size: 180,
                  gapless: false,
                  embeddedImage: AssetImage('assets/images/logo_round.png'),
                  embeddedImageStyle: QrEmbeddedImageStyle(
                    size: Size(40, 40),
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
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        if (state.account == null) {
                          context
                              .read<UserDetailsBloc>()
                              .add(const FirstTimePayment(true));
                          //
                          context.read<UserDetailsBloc>().add(
                                CreateNewAccount(
                                  userDetails: userDetails,
                                  employeeId: context.employeeId,
                                ),
                              );
                        } else if (state.account != null &&
                            state.account!.chechCompleted() == true &&
                            context
                                .read<OtpVerificationCubit>()
                                .state
                                .otpVerifySuccess
                                .isSome()) {
                          //
                          context.read<UserDetailsBloc>().add(
                                CreateNewAccount(
                                  userDetails: userDetails,
                                  employeeId: context.employeeId,
                                ),
                              );
                          context.read<OtpVerificationCubit>().clear();
                        } else {
                          context.read<UserDetailsBloc>().add(
                                ReceveAmount(
                                  userDetails: userDetails,
                                  employeeId: context.employeeId,
                                ),
                              );
                        }
                      },
                      child: const Center(
                        child: Text(
                          'Confirm',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
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
