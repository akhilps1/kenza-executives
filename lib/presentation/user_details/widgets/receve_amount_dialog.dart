import 'dart:developer';

import 'package:executives/application/core/constants.dart';
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReceveAmountDialog extends StatelessWidget {
  const ReceveAmountDialog({
    required this.userDetails,
    super.key,
  });

  final UserDetails userDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getsize.height * 0.385,
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
            },
          );
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Opacity(
                opacity: 0.90,
                child: Text(
                  'Add Money',
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
                  onPressed: () {
                    log(state.account.toString());
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
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      AppColor.primaryColor,
                    ),
                  ),
                  child: state.firebaseLoading == false
                      ? const Text(
                          'Done',
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
        },
      ),
    );
  }
}
