import 'package:executives/application/core/constants.dart';
import 'package:executives/application/transactions/employee_detais/get_emloyee_details_cubit.dart';
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/core/widgets/custom_textfield.dart';
import 'package:executives/presentation/user_details/widgets/show_qr_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReceveAmountDialog extends StatelessWidget {
  const ReceveAmountDialog({
    required this.animationController,
    required this.userDetails,
    super.key,
  });

  final UserDetails userDetails;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getsize.height * 0.48,
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BlocConsumer<UserDetailsBloc, UserDetailsState>(
        listener: (context, state) {
          state.successOption.fold(
            () => null,
            (_) {
              Navigator.pop(context);
              context.read<UserDetailsBloc>().add(ClearSuccess());
            },
          );
        },
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Opacity(
                  opacity: 0.90,
                  child: Text(
                    'Receive  Money',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                kSizedBoxH10,
                TabBar.secondary(
                    onTap: (value) {
                      switch (value) {
                        case 1:
                          context
                              .read<UserDetailsBloc>()
                              .add(SetTransactionType(isOffline: false));
                        case 0:
                          context
                              .read<UserDetailsBloc>()
                              .add(SetTransactionType(isOffline: true));
                      }
                    },
                    tabs: [
                      Tab(text: 'Offline'),
                      Tab(
                        text: 'Online',
                      )
                    ]),
                SizedBox(
                  height: context.getsize.height * 0.35,
                  child: TabBarView(children: [
                    GetAmountDetailsWidget(
                      buttonText: 'Done',
                      onPressed: () {
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
                    ),
                    GetAmountDetailsWidget(
                      buttonText: 'Generate QR',
                      onPressed: () {
                        if (!state.amount.isValid()) {
                          context.read<UserDetailsBloc>().add(ValidateAmount());
                          return;
                        }

                        final upi = context
                                .read<GetEmloyeeDetailsCubit>()
                                .state
                                .paymentKeys
                                ?.upiId ??
                            '';
                        showGeneralDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierLabel:
                              // ignore: use_build_context_synchronously
                              MaterialLocalizations.of(context)
                                  .modalBarrierDismissLabel,
                          barrierColor: Colors.black45,
                          transitionBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SlideTransition(
                              position: Tween(
                                begin: const Offset(0, 1),
                                end: const Offset(0, 0),
                              ).animate(animation),
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (context, anim1, anim2) => Material(
                            type: MaterialType.transparency,
                            child: ShowQRCodeDialog(
                              animationController: animationController,
                              userDetails: userDetails,
                              paymentDetails:
                                  'upi://pay?pa=$upi&pn=KenzaGold&am=${state.amount.value}&cu=INR&tn=Nill',
                            ),
                          ),
                        );
                      },
                    )
                  ]),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class GetAmountDetailsWidget extends StatelessWidget {
  const GetAmountDetailsWidget(
      {required this.buttonText, this.onPressed, super.key});

  final void Function()? onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
        builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kSizedBoxH10,
          const Opacity(
            opacity: 0.70,
            child: Text(
              'Amount',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          kSizedBoxH10,
          CustomTextField(
            autovalidateMode: state.showError,
            onChanged: (value) {
              if (double.tryParse(value) != null) {
                final amount = num.parse(value.trim());

                context.read<UserDetailsBloc>().add(AmountChanged(amount));
              }
            },
            validator: (value) {
              return state.amount.value.fold(
                (failure) => failure.maybeMap(
                  orElse: () {
                    return null;
                  },
                  invalidAmount: (value) => value.errorMsg,
                  monthlyLimitExeeded: (value) => value.errorMsg,
                ),
                (r) => null,
              );
            },
            textInputType: TextInputType.number,
            borderColor: Colors.black54,
            hintText: 'Enter Amount',
          ),
          const SizedBox(
            height: 15,
          ),
          const Opacity(
            opacity: 0.70,
            child: Text(
              'Note',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          kSizedBoxH10,
          CustomTextField(
            autovalidateMode: AutovalidateMode.disabled,
            borderColor: Colors.black54,
            hintText: 'Enter Your Note',
            onChanged: (value) {
              context.read<UserDetailsBloc>().add(
                    NoteChanged(value),
                  );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: context.getsize.width - 30,
            child: ElevatedButton(
              onPressed: onPressed,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  AppColor.primaryColor,
                ),
              ),
              child: state.firebaseLoading == false
                  ? Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  : const CustomCircularProgress(),
            ),
          )
        ],
      );
    });
  }
}
