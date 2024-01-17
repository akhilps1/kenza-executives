// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../../../application/auth/auth_bloc.dart' as _i26;
import '../../../application/transactions/employee_detais/get_emloyee_details_cubit.dart'
    as _i20;
import '../../../application/transactions/transactions_bloc.dart' as _i17;
import '../../../application/user/user_bloc.dart' as _i18;
import '../../../application/user_details/otp_verification/otp_verification_cubit.dart'
    as _i15;
import '../../../application/user_details/user_details_bloc.dart' as _i25;
import '../../../infrastructure/auth/i_auth_impl.dart' as _i22;
import '../../../infrastructure/transactions/i_transaction_impl.dart' as _i11;
import '../../../infrastructure/transactions/usecase/get_employee_details_usecase.dart'
    as _i9;
import '../../../infrastructure/user/i_user_impl.dart' as _i13;
import '../../../infrastructure/user_details/i_user_details_impl.dart' as _i24;
import '../../../infrastructure/user_details/usecase/get_cash_and_bank_details.dart'
    as _i8;
import '../../../infrastructure/user_details/usecase/notification_usecase.dart'
    as _i14;
import '../../../infrastructure/user_details/usecase/user_verification_usecase.dart'
    as _i19;
import '../../auth/i_auth_facade.dart' as _i21;
import '../../transactions/i_transaction_facade.dart' as _i10;
import '../../user_details/i_user_details_facade.dart' as _i23;
import '../../users/i_user_facade.dart' as _i12;
import 'app_injectable_module.dart' as _i27;
import 'firebase_injectable_module.dart' as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  await gh.factoryAsync<_i6.FirebaseServeice>(
    () => firebaseInjectableModule.firebaseServeice,
    preResolve: true,
  );
  gh.lazySingleton<_i7.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i8.GetCashAndBankDetails>(
      () => _i8.GetCashAndBankDetails(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.GetEmloyeeDetails>(
      () => _i9.GetEmloyeeDetails(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.ITransactionFacade>(() => _i11.ITransactionImpl(
        firestore: gh<_i4.FirebaseFirestore>(),
        emloyeeDetails: gh<_i9.GetEmloyeeDetails>(),
      ));
  gh.lazySingleton<_i12.IUserFacade>(
      () => _i13.IUserImpl(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.NotificationServeice>(
      () => _i14.NotificationServeice());
  gh.factory<_i15.OtpVerificationCubit>(() => _i15.OtpVerificationCubit());
  await gh.factoryAsync<_i16.SharedPreferences>(
    () => appInjectableModule.pref,
    preResolve: true,
  );
  gh.factory<_i17.TransactionsBloc>(
      () => _i17.TransactionsBloc(gh<_i10.ITransactionFacade>()));
  gh.factory<_i18.UserBloc>(() => _i18.UserBloc(gh<_i12.IUserFacade>()));
  gh.lazySingleton<_i19.UserVerificationServeice>(
      () => _i19.UserVerificationServeice(gh<_i3.FirebaseAuth>()));
  gh.factory<_i20.GetEmloyeeDetailsCubit>(
      () => _i20.GetEmloyeeDetailsCubit(gh<_i10.ITransactionFacade>()));
  gh.lazySingleton<_i21.IAuthFacde>(() => _i22.IAuthImpl(
        preferences: gh<_i16.SharedPreferences>(),
        firestore: gh<_i4.FirebaseFirestore>(),
      ));
  gh.lazySingleton<_i23.IUserDeatailsFacade>(() => _i24.IUserDeatailsImpl(
        firestore: gh<_i4.FirebaseFirestore>(),
        notificationServeice: gh<_i14.NotificationServeice>(),
        userVerificationServeice: gh<_i19.UserVerificationServeice>(),
        cashAndBankDetails: gh<_i8.GetCashAndBankDetails>(),
      ));
  gh.factory<_i25.UserDetailsBloc>(
      () => _i25.UserDetailsBloc(gh<_i23.IUserDeatailsFacade>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(gh<_i21.IAuthFacde>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i6.FirebaseInjectableModule {}

class _$AppInjectableModule extends _i27.AppInjectableModule {}
