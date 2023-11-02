// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserNameChangedImplCopyWith<$Res> {
  factory _$$UserNameChangedImplCopyWith(_$UserNameChangedImpl value,
          $Res Function(_$UserNameChangedImpl) then) =
      __$$UserNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$UserNameChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserNameChangedImpl>
    implements _$$UserNameChangedImplCopyWith<$Res> {
  __$$UserNameChangedImplCopyWithImpl(
      _$UserNameChangedImpl _value, $Res Function(_$UserNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserNameChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChangedImpl implements UserNameChanged {
  const _$UserNameChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.userNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      __$$UserNameChangedImplCopyWithImpl<_$UserNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return userNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return userNameChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return userNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class UserNameChanged implements AuthEvent {
  const factory UserNameChanged(final String value) = _$UserNameChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$UserNameChangedImplCopyWith<_$UserNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged(final String value) = _$PasswordChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginClickedImplCopyWith<$Res> {
  factory _$$LoginClickedImplCopyWith(
          _$LoginClickedImpl value, $Res Function(_$LoginClickedImpl) then) =
      __$$LoginClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginClickedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginClickedImpl>
    implements _$$LoginClickedImplCopyWith<$Res> {
  __$$LoginClickedImplCopyWithImpl(
      _$LoginClickedImpl _value, $Res Function(_$LoginClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginClickedImpl implements LoginClicked {
  const _$LoginClickedImpl();

  @override
  String toString() {
    return 'AuthEvent.loginClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return loginClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return loginClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (loginClicked != null) {
      return loginClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return loginClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return loginClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (loginClicked != null) {
      return loginClicked(this);
    }
    return orElse();
  }
}

abstract class LoginClicked implements AuthEvent {
  const factory LoginClicked() = _$LoginClickedImpl;
}

/// @nodoc
abstract class _$$checkLoginStatusImplCopyWith<$Res> {
  factory _$$checkLoginStatusImplCopyWith(_$checkLoginStatusImpl value,
          $Res Function(_$checkLoginStatusImpl) then) =
      __$$checkLoginStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkLoginStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$checkLoginStatusImpl>
    implements _$$checkLoginStatusImplCopyWith<$Res> {
  __$$checkLoginStatusImplCopyWithImpl(_$checkLoginStatusImpl _value,
      $Res Function(_$checkLoginStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkLoginStatusImpl implements checkLoginStatus {
  const _$checkLoginStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkloginStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkLoginStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return checkloginStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return checkloginStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (checkloginStatus != null) {
      return checkloginStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return checkloginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return checkloginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (checkloginStatus != null) {
      return checkloginStatus(this);
    }
    return orElse();
  }
}

abstract class checkLoginStatus implements AuthEvent {
  const factory checkLoginStatus() = _$checkLoginStatusImpl;
}

/// @nodoc
abstract class _$$ValidateEmployeeImplCopyWith<$Res> {
  factory _$$ValidateEmployeeImplCopyWith(_$ValidateEmployeeImpl value,
          $Res Function(_$ValidateEmployeeImpl) then) =
      __$$ValidateEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser});
}

/// @nodoc
class __$$ValidateEmployeeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateEmployeeImpl>
    implements _$$ValidateEmployeeImplCopyWith<$Res> {
  __$$ValidateEmployeeImplCopyWithImpl(_$ValidateEmployeeImpl _value,
      $Res Function(_$ValidateEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$ValidateEmployeeImpl(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$ValidateEmployeeImpl implements _ValidateEmployee {
  const _$ValidateEmployeeImpl(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'AuthEvent.validateEmployee(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateEmployeeImpl &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateEmployeeImplCopyWith<_$ValidateEmployeeImpl> get copyWith =>
      __$$ValidateEmployeeImplCopyWithImpl<_$ValidateEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return validateEmployee(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return validateEmployee?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (validateEmployee != null) {
      return validateEmployee(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return validateEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return validateEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (validateEmployee != null) {
      return validateEmployee(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmployee implements AuthEvent {
  const factory _ValidateEmployee(final AppUser appUser) =
      _$ValidateEmployeeImpl;

  AppUser get appUser;
  @JsonKey(ignore: true)
  _$$ValidateEmployeeImplCopyWith<_$ValidateEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFailureImplCopyWith<$Res> {
  factory _$$ClearFailureImplCopyWith(
          _$ClearFailureImpl value, $Res Function(_$ClearFailureImpl) then) =
      __$$ClearFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFailureImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ClearFailureImpl>
    implements _$$ClearFailureImplCopyWith<$Res> {
  __$$ClearFailureImplCopyWithImpl(
      _$ClearFailureImpl _value, $Res Function(_$ClearFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFailureImpl implements ClearFailure {
  const _$ClearFailureImpl();

  @override
  String toString() {
    return 'AuthEvent.clearFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return clearFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return clearFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (clearFailure != null) {
      return clearFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return clearFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return clearFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (clearFailure != null) {
      return clearFailure(this);
    }
    return orElse();
  }
}

abstract class ClearFailure implements AuthEvent {
  const factory ClearFailure() = _$ClearFailureImpl;
}

/// @nodoc
abstract class _$$EmployyeDetailsUpdatedImplCopyWith<$Res> {
  factory _$$EmployyeDetailsUpdatedImplCopyWith(
          _$EmployyeDetailsUpdatedImpl value,
          $Res Function(_$EmployyeDetailsUpdatedImpl) then) =
      __$$EmployyeDetailsUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Executive executive});
}

/// @nodoc
class __$$EmployyeDetailsUpdatedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmployyeDetailsUpdatedImpl>
    implements _$$EmployyeDetailsUpdatedImplCopyWith<$Res> {
  __$$EmployyeDetailsUpdatedImplCopyWithImpl(
      _$EmployyeDetailsUpdatedImpl _value,
      $Res Function(_$EmployyeDetailsUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executive = null,
  }) {
    return _then(_$EmployyeDetailsUpdatedImpl(
      null == executive
          ? _value.executive
          : executive // ignore: cast_nullable_to_non_nullable
              as Executive,
    ));
  }
}

/// @nodoc

class _$EmployyeDetailsUpdatedImpl implements EmployyeDetailsUpdated {
  const _$EmployyeDetailsUpdatedImpl(this.executive);

  @override
  final Executive executive;

  @override
  String toString() {
    return 'AuthEvent.employyeDetailsUpdated(executive: $executive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployyeDetailsUpdatedImpl &&
            (identical(other.executive, executive) ||
                other.executive == executive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, executive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployyeDetailsUpdatedImplCopyWith<_$EmployyeDetailsUpdatedImpl>
      get copyWith => __$$EmployyeDetailsUpdatedImplCopyWithImpl<
          _$EmployyeDetailsUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return employyeDetailsUpdated(executive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return employyeDetailsUpdated?.call(executive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (employyeDetailsUpdated != null) {
      return employyeDetailsUpdated(executive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return employyeDetailsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return employyeDetailsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (employyeDetailsUpdated != null) {
      return employyeDetailsUpdated(this);
    }
    return orElse();
  }
}

abstract class EmployyeDetailsUpdated implements AuthEvent {
  const factory EmployyeDetailsUpdated(final Executive executive) =
      _$EmployyeDetailsUpdatedImpl;

  Executive get executive;
  @JsonKey(ignore: true)
  _$$EmployyeDetailsUpdatedImplCopyWith<_$EmployyeDetailsUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$ClearAuthImplCopyWith<$Res> {
  factory _$$ClearAuthImplCopyWith(
          _$ClearAuthImpl value, $Res Function(_$ClearAuthImpl) then) =
      __$$ClearAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ClearAuthImpl>
    implements _$$ClearAuthImplCopyWith<$Res> {
  __$$ClearAuthImplCopyWithImpl(
      _$ClearAuthImpl _value, $Res Function(_$ClearAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAuthImpl implements ClearAuth {
  const _$ClearAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.clearAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) userNameChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginClicked,
    required TResult Function() checkloginStatus,
    required TResult Function(AppUser appUser) validateEmployee,
    required TResult Function() clearFailure,
    required TResult Function(Executive executive) employyeDetailsUpdated,
    required TResult Function() logOut,
    required TResult Function() clearAuth,
  }) {
    return clearAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? userNameChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? loginClicked,
    TResult? Function()? checkloginStatus,
    TResult? Function(AppUser appUser)? validateEmployee,
    TResult? Function()? clearFailure,
    TResult? Function(Executive executive)? employyeDetailsUpdated,
    TResult? Function()? logOut,
    TResult? Function()? clearAuth,
  }) {
    return clearAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? userNameChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginClicked,
    TResult Function()? checkloginStatus,
    TResult Function(AppUser appUser)? validateEmployee,
    TResult Function()? clearFailure,
    TResult Function(Executive executive)? employyeDetailsUpdated,
    TResult Function()? logOut,
    TResult Function()? clearAuth,
    required TResult orElse(),
  }) {
    if (clearAuth != null) {
      return clearAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginClicked value) loginClicked,
    required TResult Function(checkLoginStatus value) checkloginStatus,
    required TResult Function(_ValidateEmployee value) validateEmployee,
    required TResult Function(ClearFailure value) clearFailure,
    required TResult Function(EmployyeDetailsUpdated value)
        employyeDetailsUpdated,
    required TResult Function(Logout value) logOut,
    required TResult Function(ClearAuth value) clearAuth,
  }) {
    return clearAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNameChanged value)? userNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(LoginClicked value)? loginClicked,
    TResult? Function(checkLoginStatus value)? checkloginStatus,
    TResult? Function(_ValidateEmployee value)? validateEmployee,
    TResult? Function(ClearFailure value)? clearFailure,
    TResult? Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult? Function(Logout value)? logOut,
    TResult? Function(ClearAuth value)? clearAuth,
  }) {
    return clearAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginClicked value)? loginClicked,
    TResult Function(checkLoginStatus value)? checkloginStatus,
    TResult Function(_ValidateEmployee value)? validateEmployee,
    TResult Function(ClearFailure value)? clearFailure,
    TResult Function(EmployyeDetailsUpdated value)? employyeDetailsUpdated,
    TResult Function(Logout value)? logOut,
    TResult Function(ClearAuth value)? clearAuth,
    required TResult orElse(),
  }) {
    if (clearAuth != null) {
      return clearAuth(this);
    }
    return orElse();
  }
}

abstract class ClearAuth implements AuthEvent {
  const factory ClearAuth() = _$ClearAuthImpl;
}

/// @nodoc
mixin _$AuthState {
  Username get username => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Option<Executive> get succssOption => throw _privateConstructorUsedError;
  Option<Unit> get logoutSuccessOption => throw _privateConstructorUsedError;
  Executive? get executive => throw _privateConstructorUsedError;
  Option<AuthFailure> get failureOption => throw _privateConstructorUsedError;
  AutovalidateMode get showError => throw _privateConstructorUsedError;
  Option<AppUser> get authStatusOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {Username username,
      bool isLoading,
      Password password,
      Option<Executive> succssOption,
      Option<Unit> logoutSuccessOption,
      Executive? executive,
      Option<AuthFailure> failureOption,
      AutovalidateMode showError,
      Option<AppUser> authStatusOption});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? isLoading = null,
    Object? password = null,
    Object? succssOption = null,
    Object? logoutSuccessOption = null,
    Object? executive = freezed,
    Object? failureOption = null,
    Object? showError = null,
    Object? authStatusOption = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      succssOption: null == succssOption
          ? _value.succssOption
          : succssOption // ignore: cast_nullable_to_non_nullable
              as Option<Executive>,
      logoutSuccessOption: null == logoutSuccessOption
          ? _value.logoutSuccessOption
          : logoutSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
      executive: freezed == executive
          ? _value.executive
          : executive // ignore: cast_nullable_to_non_nullable
              as Executive?,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authStatusOption: null == authStatusOption
          ? _value.authStatusOption
          : authStatusOption // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Username username,
      bool isLoading,
      Password password,
      Option<Executive> succssOption,
      Option<Unit> logoutSuccessOption,
      Executive? executive,
      Option<AuthFailure> failureOption,
      AutovalidateMode showError,
      Option<AppUser> authStatusOption});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? isLoading = null,
    Object? password = null,
    Object? succssOption = null,
    Object? logoutSuccessOption = null,
    Object? executive = freezed,
    Object? failureOption = null,
    Object? showError = null,
    Object? authStatusOption = null,
  }) {
    return _then(_$AuthStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      succssOption: null == succssOption
          ? _value.succssOption
          : succssOption // ignore: cast_nullable_to_non_nullable
              as Option<Executive>,
      logoutSuccessOption: null == logoutSuccessOption
          ? _value.logoutSuccessOption
          : logoutSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
      executive: freezed == executive
          ? _value.executive
          : executive // ignore: cast_nullable_to_non_nullable
              as Executive?,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      authStatusOption: null == authStatusOption
          ? _value.authStatusOption
          : authStatusOption // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.username,
      required this.isLoading,
      required this.password,
      required this.succssOption,
      required this.logoutSuccessOption,
      required this.executive,
      required this.failureOption,
      required this.showError,
      required this.authStatusOption});

  @override
  final Username username;
  @override
  final bool isLoading;
  @override
  final Password password;
  @override
  final Option<Executive> succssOption;
  @override
  final Option<Unit> logoutSuccessOption;
  @override
  final Executive? executive;
  @override
  final Option<AuthFailure> failureOption;
  @override
  final AutovalidateMode showError;
  @override
  final Option<AppUser> authStatusOption;

  @override
  String toString() {
    return 'AuthState(username: $username, isLoading: $isLoading, password: $password, succssOption: $succssOption, logoutSuccessOption: $logoutSuccessOption, executive: $executive, failureOption: $failureOption, showError: $showError, authStatusOption: $authStatusOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.succssOption, succssOption) ||
                other.succssOption == succssOption) &&
            (identical(other.logoutSuccessOption, logoutSuccessOption) ||
                other.logoutSuccessOption == logoutSuccessOption) &&
            (identical(other.executive, executive) ||
                other.executive == executive) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.authStatusOption, authStatusOption) ||
                other.authStatusOption == authStatusOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      isLoading,
      password,
      succssOption,
      logoutSuccessOption,
      executive,
      failureOption,
      showError,
      authStatusOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final Username username,
      required final bool isLoading,
      required final Password password,
      required final Option<Executive> succssOption,
      required final Option<Unit> logoutSuccessOption,
      required final Executive? executive,
      required final Option<AuthFailure> failureOption,
      required final AutovalidateMode showError,
      required final Option<AppUser> authStatusOption}) = _$AuthStateImpl;

  @override
  Username get username;
  @override
  bool get isLoading;
  @override
  Password get password;
  @override
  Option<Executive> get succssOption;
  @override
  Option<Unit> get logoutSuccessOption;
  @override
  Executive? get executive;
  @override
  Option<AuthFailure> get failureOption;
  @override
  AutovalidateMode get showError;
  @override
  Option<AppUser> get authStatusOption;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
