// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../../application/auth/auth_bloc.dart' as _i16;
import '../../../application/user/user_bloc.dart' as _i12;
import '../../../application/user_details/user_details_bloc.dart' as _i13;
import '../../../infrastructure/auth/i_auth_impl.dart' as _i15;
import '../../../infrastructure/user/i_user_impl.dart' as _i10;
import '../../../infrastructure/user_details/i_user_details_impl.dart' as _i8;
import '../../auth/i_auth_facade.dart' as _i14;
import '../../user_details/i_user_details_facade.dart' as _i7;
import '../../users/i_user_facade.dart' as _i9;
import 'app_injectable_module.dart' as _i17;
import 'firebase_injectable_module.dart' as _i5;

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
  gh.lazySingleton<_i3.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i4.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  await gh.factoryAsync<_i5.FirebaseServeice>(
    () => firebaseInjectableModule.firebaseServeice,
    preResolve: true,
  );
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i7.IUserDeatailsFacade>(() => _i8.IUserDeatailsImpl(
        firestore: gh<_i3.FirebaseFirestore>(),
        messaging: gh<_i4.FirebaseMessaging>(),
      ));
  gh.lazySingleton<_i9.IUserFacade>(
      () => _i10.IUserImpl(gh<_i3.FirebaseFirestore>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => appInjectableModule.pref,
    preResolve: true,
  );
  gh.factory<_i12.UserBloc>(() => _i12.UserBloc(gh<_i9.IUserFacade>()));
  gh.factory<_i13.UserDetailsBloc>(
      () => _i13.UserDetailsBloc(gh<_i7.IUserDeatailsFacade>()));
  gh.lazySingleton<_i14.IAuthFacde>(() => _i15.IAuthImpl(
        preferences: gh<_i11.SharedPreferences>(),
        firestore: gh<_i3.FirebaseFirestore>(),
      ));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(gh<_i14.IAuthFacde>()));
  return getIt;
}

class _$FirebaseInjectableModule extends _i5.FirebaseInjectableModule {}

class _$AppInjectableModule extends _i17.AppInjectableModule {}
