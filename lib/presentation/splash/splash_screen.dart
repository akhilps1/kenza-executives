import 'dart:async';
import 'dart:developer';

import 'package:executives/application/auth/auth_bloc.dart';
import 'package:executives/application/core/constants.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/auth/auth_screen.dart';
import 'package:executives/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<AuthBloc>().add(const checkLoginStatus());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.succssOption.fold(() => null, (a) {
          Navigator.pushReplacement(
            context,
            PageTransition(
              child: const AppWidget(),
              type: PageTransitionType.fade,
            ),
          );
        });
        state.failureOption.fold(
          () => null,
          (a) {
            Timer(const Duration(seconds: 3), () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                  child: const AuthScreen(),
                  type: PageTransitionType.fade,
                ),
              );
            });
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
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
              kSizedBoxH10,
              Text(
                'MADE FOR',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Text(
                'COLLECTION EXECUTIVES',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: const Color(0xFF6F0F10),
                      fontSize: 11.85,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
