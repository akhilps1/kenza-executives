import 'package:bot_toast/bot_toast.dart';
import 'package:executives/application/auth/auth_bloc.dart';
import 'package:executives/application/transactions/employee_detais/get_emloyee_details_cubit.dart';
import 'package:executives/application/transactions/transactions_bloc.dart';
import 'package:executives/application/user/user_bloc.dart';
import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/auth/i_auth_facade.dart';
import 'package:executives/domain/core/di/injection.dart';
import 'package:executives/domain/core/utils/theme/themes.dart';
import 'package:executives/domain/transactions/i_transaction_facade.dart';
import 'package:executives/domain/user_details/i_user_details_facade.dart';
import 'package:executives/domain/users/i_user_facade.dart';
import 'package:executives/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(
            sl<IAuthFacde>(),
          ),
        ),
        BlocProvider(
          create: (_) => UserBloc(
            sl<IUserFacade>(),
          ),
        ),
        BlocProvider(
          create: (_) => UserDetailsBloc(
            sl<IUserDeatailsFacade>(),
          ),
        ),
        BlocProvider(
          create: (_) => OtpVerificationCubit(),
        ),
        BlocProvider(
          create: (_) => GetEmloyeeDetailsCubit(
            sl<ITransactionFacade>(),
          ),
        ),
        BlocProvider(
          create: (_) => TransactionsBloc(
            sl<ITransactionFacade>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: BotToastInit(),
        navigatorObservers: [
          BotToastNavigatorObserver(),
        ],
        title: 'KENZA EXECUTIVES',
        theme: AppTheam.lightTheam,
        home: const SplashScreen(),
      ),
    );
  }
}
