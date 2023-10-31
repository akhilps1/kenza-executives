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
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../../application/auth/auth_bloc.dart' as _i20;
import '../../../application/user/user_bloc.dart' as _i13;
import '../../../application/user_details/otp_verification/otp_verification_cubit.dart'
    as _i11;
import '../../../application/user_details/user_details_bloc.dart' as _i19;
import '../../../infrastructure/auth/i_auth_impl.dart' as _i16;
import '../../../infrastructure/user/i_user_impl.dart' as _i9;
import '../../../infrastructure/user_details/i_user_details_impl.dart' as _i18;
import '../../../infrastructure/user_details/usecase/notification_usecase.dart'
    as _i10;
import '../../../infrastructure/user_details/usecase/user_verification_usecase.dart'
    as _i14;
import '../../auth/i_auth_facade.dart' as _i15;
import '../../user_details/i_user_details_facade.dart' as _i17;
import '../../users/i_user_facade.dart' as _i8;
import 'app_injectable_module.dart' as _i21;
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
  gh.lazySingleton<_i8.IUserFacade>(
      () => _i9.IUserImpl(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.NotificationServeice>(
      () => _i10.NotificationServeice());
  gh.factory<_i11.OtpVerificationCubit>(() => _i11.OtpVerificationCubit());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => appInjectableModule.pref,
    preResolve: true,
  );
  gh.factory<_i13.UserBloc>(() => _i13.UserBloc(gh<_i8.IUserFacade>()));
  gh.lazySingleton<_i14.UserVerificationServeice>(
      () => _i14.UserVerificationServeice(gh<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i15.IAuthFacde>(() => _i16.IAuthImpl(
        preferences: gh<_i12.SharedPreferences>(),
        firestore: gh<_i4.FirebaseFirestore>(),
      ));
  gh.lazySingleton<_i17.IUserDeatailsFacade>(() => _i18.IUserDeatailsImpl(
        firestore: gh<_i4.FirebaseFirestore>(),
        notificationServeice: gh<_i10.NotificationServeice>(),
        userVerificationServeice: gh<_i14.UserVerificationServeice>(),
      ));
  gh.factory<_i19.UserDetailsBloc>(
      () => _i19.UserDetailsBloc(gh<_i17.IUserDeatailsFacade>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(gh<_i15.IAuthFacde>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i6.FirebaseInjectableModule {}

class _$AppInjectableModule extends _i21.AppInjectableModule {}
