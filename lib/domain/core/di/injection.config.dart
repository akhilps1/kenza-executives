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
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../../../application/auth/auth_bloc.dart' as _i25;
import '../../../application/transactions/employee_detais/get_emloyee_details_cubit.dart'
    as _i19;
import '../../../application/transactions/transactions_bloc.dart' as _i16;
import '../../../application/user/user_bloc.dart' as _i17;
import '../../../application/user_details/otp_verification/otp_verification_cubit.dart'
    as _i14;
import '../../../application/user_details/user_details_bloc.dart' as _i24;
import '../../../infrastructure/auth/i_auth_impl.dart' as _i21;
import '../../../infrastructure/transactions/i_transaction_impl.dart' as _i10;
import '../../../infrastructure/transactions/usecase/get_employee_details_usecase.dart'
    as _i8;
import '../../../infrastructure/user/i_user_impl.dart' as _i12;
import '../../../infrastructure/user_details/i_user_details_impl.dart' as _i23;
import '../../../infrastructure/user_details/usecase/notification_usecase.dart'
    as _i13;
import '../../../infrastructure/user_details/usecase/user_verification_usecase.dart'
    as _i18;
import '../../auth/i_auth_facade.dart' as _i20;
import '../../transactions/i_transaction_facade.dart' as _i9;
import '../../user_details/i_user_details_facade.dart' as _i22;
import '../../users/i_user_facade.dart' as _i11;
import 'app_injectable_module.dart' as _i26;
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
  gh.lazySingleton<_i8.GetEmloyeeDetails>(
      () => _i8.GetEmloyeeDetails(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.ITransactionFacade>(() => _i10.ITransactionImpl(
        firestore: gh<_i4.FirebaseFirestore>(),
        emloyeeDetails: gh<_i8.GetEmloyeeDetails>(),
      ));
  gh.lazySingleton<_i11.IUserFacade>(
      () => _i12.IUserImpl(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i13.NotificationServeice>(
      () => _i13.NotificationServeice());
  gh.factory<_i14.OtpVerificationCubit>(() => _i14.OtpVerificationCubit());
  await gh.factoryAsync<_i15.SharedPreferences>(
    () => appInjectableModule.pref,
    preResolve: true,
  );
  gh.factory<_i16.TransactionsBloc>(
      () => _i16.TransactionsBloc(gh<_i9.ITransactionFacade>()));
  gh.factory<_i17.UserBloc>(() => _i17.UserBloc(gh<_i11.IUserFacade>()));
  gh.lazySingleton<_i18.UserVerificationServeice>(
      () => _i18.UserVerificationServeice(gh<_i3.FirebaseAuth>()));
  gh.factory<_i19.GetEmloyeeDetailsCubit>(
      () => _i19.GetEmloyeeDetailsCubit(gh<_i9.ITransactionFacade>()));
  gh.lazySingleton<_i20.IAuthFacde>(() => _i21.IAuthImpl(
        preferences: gh<_i15.SharedPreferences>(),
        firestore: gh<_i4.FirebaseFirestore>(),
      ));
  gh.lazySingleton<_i22.IUserDeatailsFacade>(() => _i23.IUserDeatailsImpl(
        firestore: gh<_i4.FirebaseFirestore>(),
        notificationServeice: gh<_i13.NotificationServeice>(),
        userVerificationServeice: gh<_i18.UserVerificationServeice>(),
      ));
  gh.factory<_i24.UserDetailsBloc>(
      () => _i24.UserDetailsBloc(gh<_i22.IUserDeatailsFacade>()));
  gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(gh<_i20.IAuthFacde>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i6.FirebaseInjectableModule {}

class _$AppInjectableModule extends _i26.AppInjectableModule {}
