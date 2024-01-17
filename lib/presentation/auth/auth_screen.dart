// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import 'package:executives/application/auth/auth_bloc.dart';
import 'package:executives/application/core/constants.dart';
import 'package:executives/domain/core/serveice/custom_toast.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/core/app_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.failureOption.fold(
          () => null,
          (failure) {
            failure.maybeMap(
              orElse: () {},
              invalidCredentials: (value) {
                CustomToast.errorToast(
                  message: value.errorMsg,
                );
              },
              serverFailure: (value) {
                CustomToast.errorToast(
                  message: value.errorMsg,
                );
              },
            );
            context.read<AuthBloc>().add(const ClearFailure());
          },
        );

        state.succssOption.fold(
          () => null,
          (_) {
            Navigator.pushReplacement(
              context,
              PageTransition(
                child: const AppWidget(),
                type: PageTransitionType.fade,
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFEBEBEB),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                        color: AppColor.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Transform.scale(
                        scale: 0.8,
                        child: Image.asset(
                          MediaRes.logo,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Log In',
                          style: context.theme.titleMedium!.copyWith(
                            color: const Color(0xFF6F0F10),
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: context.getsize.width - 30,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Opacity(
                            opacity: 0.70,
                            child: Text(
                              'Username',
                              style: TextStyle(
                                color: Color(0xFF6F0F10),
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          kSizedBoxH10,
                          CustomTextField(
                            autovalidateMode: state.showError,
                            validator: (value) {
                              return state.username.value.fold(
                                (failure) {
                                  return failure.maybeMap(
                                    orElse: () => null,
                                    invalidUserName: (value) => value.errorMsg,
                                  );
                                },
                                (r) => null,
                              );
                            },
                            onChanged: (value) {
                              context.read<AuthBloc>().add(
                                    UserNameChanged(value),
                                  );
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Opacity(
                            opacity: 0.70,
                            child: Text(
                              'Password',
                              style: TextStyle(
                                color: Color(0xFF6F0F10),
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          kSizedBoxH10,
                          CustomTextField(
                            autovalidateMode: state.showError,
                            validator: (value) {
                              return state.password.value.fold(
                                (failure) {
                                  return failure.maybeMap(
                                    orElse: () => null,
                                    invalidPassword: (value) => value.errorMsg,
                                  );
                                },
                                (r) => null,
                              );
                            },
                            onChanged: (value) {
                              context.read<AuthBloc>().add(
                                    PasswordChanged(value),
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
                                context.read<AuthBloc>().add(
                                      const LoginClicked(),
                                    );
                              },
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                backgroundColor: const MaterialStatePropertyAll(
                                  AppColor.primaryColor,
                                ),
                              ),
                              child: state.isLoading == false
                                  ? const Text(
                                      'LOGIN',
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
                      ),
                    ),
                    kSizedBoxH10,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
