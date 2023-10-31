// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/domain/core/utils/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pinput/pinput.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({
    Key? key,
    required this.onCompleted,
    this.defaultPinTheme,
    this.focusedPinTheme,
    this.submittedPinTheme,
  }) : super(key: key);

  final Function(String) onCompleted;
  final PinTheme? defaultPinTheme;
  final PinTheme? focusedPinTheme;
  final PinTheme? submittedPinTheme;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      focusNode: FocusNode(),
      defaultPinTheme: defaultPinTheme ?? AppTheam.defaultPinTheme,
      focusedPinTheme: focusedPinTheme ?? AppTheam.focusedPinTheme,
      submittedPinTheme: submittedPinTheme ?? AppTheam.submittedPinTheme,
      // validator: (s) {
      //   return s == '2222' ? null : 'Pin is incorrect';
      // },
      onChanged: (value) {
        context.read<OtpVerificationCubit>().optChanged(value);
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      autofocus: true,
      onCompleted: onCompleted,
    );
  }
}
