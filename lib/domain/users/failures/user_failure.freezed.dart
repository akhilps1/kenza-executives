// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFailure {
  String get errorMsg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) userNotFount,
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) accountNotFont,
    required TResult Function(String errorMsg) transactionNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? userNotFount,
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? accountNotFont,
    TResult? Function(String errorMsg)? transactionNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? userNotFount,
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? accountNotFont,
    TResult Function(String errorMsg)? transactionNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFount value) userNotFount,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_AccountNotFont value) accountNotFont,
    required TResult Function(_TransactionNotFound value) transactionNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotFount value)? userNotFount,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_AccountNotFont value)? accountNotFont,
    TResult? Function(_TransactionNotFound value)? transactionNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFount value)? userNotFount,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_AccountNotFont value)? accountNotFont,
    TResult Function(_TransactionNotFound value)? transactionNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFailureCopyWith<UserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res, UserFailure>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res, $Val extends UserFailure>
    implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotFountImplCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory _$$UserNotFountImplCopyWith(
          _$UserNotFountImpl value, $Res Function(_$UserNotFountImpl) then) =
      __$$UserNotFountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$UserNotFountImplCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$UserNotFountImpl>
    implements _$$UserNotFountImplCopyWith<$Res> {
  __$$UserNotFountImplCopyWithImpl(
      _$UserNotFountImpl _value, $Res Function(_$UserNotFountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$UserNotFountImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNotFountImpl implements _UserNotFount {
  const _$UserNotFountImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'UserFailure.userNotFount(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotFountImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotFountImplCopyWith<_$UserNotFountImpl> get copyWith =>
      __$$UserNotFountImplCopyWithImpl<_$UserNotFountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) userNotFount,
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) accountNotFont,
    required TResult Function(String errorMsg) transactionNotFound,
  }) {
    return userNotFount(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? userNotFount,
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? accountNotFont,
    TResult? Function(String errorMsg)? transactionNotFound,
  }) {
    return userNotFount?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? userNotFount,
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? accountNotFont,
    TResult Function(String errorMsg)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (userNotFount != null) {
      return userNotFount(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFount value) userNotFount,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_AccountNotFont value) accountNotFont,
    required TResult Function(_TransactionNotFound value) transactionNotFound,
  }) {
    return userNotFount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotFount value)? userNotFount,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_AccountNotFont value)? accountNotFont,
    TResult? Function(_TransactionNotFound value)? transactionNotFound,
  }) {
    return userNotFount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFount value)? userNotFount,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_AccountNotFont value)? accountNotFont,
    TResult Function(_TransactionNotFound value)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (userNotFount != null) {
      return userNotFount(this);
    }
    return orElse();
  }
}

abstract class _UserNotFount implements UserFailure {
  const factory _UserNotFount({required final String errorMsg}) =
      _$UserNotFountImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$UserNotFountImplCopyWith<_$UserNotFountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ServerFailureImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'UserFailure.serverFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) userNotFount,
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) accountNotFont,
    required TResult Function(String errorMsg) transactionNotFound,
  }) {
    return serverFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? userNotFount,
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? accountNotFont,
    TResult? Function(String errorMsg)? transactionNotFound,
  }) {
    return serverFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? userNotFount,
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? accountNotFont,
    TResult Function(String errorMsg)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFount value) userNotFount,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_AccountNotFont value) accountNotFont,
    required TResult Function(_TransactionNotFound value) transactionNotFound,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotFount value)? userNotFount,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_AccountNotFont value)? accountNotFont,
    TResult? Function(_TransactionNotFound value)? transactionNotFound,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFount value)? userNotFount,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_AccountNotFont value)? accountNotFont,
    TResult Function(_TransactionNotFound value)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements UserFailure {
  const factory _ServerFailure({required final String errorMsg}) =
      _$ServerFailureImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountNotFontImplCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory _$$AccountNotFontImplCopyWith(_$AccountNotFontImpl value,
          $Res Function(_$AccountNotFontImpl) then) =
      __$$AccountNotFontImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$AccountNotFontImplCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$AccountNotFontImpl>
    implements _$$AccountNotFontImplCopyWith<$Res> {
  __$$AccountNotFontImplCopyWithImpl(
      _$AccountNotFontImpl _value, $Res Function(_$AccountNotFontImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$AccountNotFontImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountNotFontImpl implements _AccountNotFont {
  const _$AccountNotFontImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'UserFailure.accountNotFont(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountNotFontImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountNotFontImplCopyWith<_$AccountNotFontImpl> get copyWith =>
      __$$AccountNotFontImplCopyWithImpl<_$AccountNotFontImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) userNotFount,
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) accountNotFont,
    required TResult Function(String errorMsg) transactionNotFound,
  }) {
    return accountNotFont(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? userNotFount,
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? accountNotFont,
    TResult? Function(String errorMsg)? transactionNotFound,
  }) {
    return accountNotFont?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? userNotFount,
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? accountNotFont,
    TResult Function(String errorMsg)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (accountNotFont != null) {
      return accountNotFont(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFount value) userNotFount,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_AccountNotFont value) accountNotFont,
    required TResult Function(_TransactionNotFound value) transactionNotFound,
  }) {
    return accountNotFont(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotFount value)? userNotFount,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_AccountNotFont value)? accountNotFont,
    TResult? Function(_TransactionNotFound value)? transactionNotFound,
  }) {
    return accountNotFont?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFount value)? userNotFount,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_AccountNotFont value)? accountNotFont,
    TResult Function(_TransactionNotFound value)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (accountNotFont != null) {
      return accountNotFont(this);
    }
    return orElse();
  }
}

abstract class _AccountNotFont implements UserFailure {
  const factory _AccountNotFont({required final String errorMsg}) =
      _$AccountNotFontImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$AccountNotFontImplCopyWith<_$AccountNotFontImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionNotFoundImplCopyWith<$Res>
    implements $UserFailureCopyWith<$Res> {
  factory _$$TransactionNotFoundImplCopyWith(_$TransactionNotFoundImpl value,
          $Res Function(_$TransactionNotFoundImpl) then) =
      __$$TransactionNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$TransactionNotFoundImplCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$TransactionNotFoundImpl>
    implements _$$TransactionNotFoundImplCopyWith<$Res> {
  __$$TransactionNotFoundImplCopyWithImpl(_$TransactionNotFoundImpl _value,
      $Res Function(_$TransactionNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$TransactionNotFoundImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionNotFoundImpl implements _TransactionNotFound {
  const _$TransactionNotFoundImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'UserFailure.transactionNotFound(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionNotFoundImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionNotFoundImplCopyWith<_$TransactionNotFoundImpl> get copyWith =>
      __$$TransactionNotFoundImplCopyWithImpl<_$TransactionNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) userNotFount,
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) accountNotFont,
    required TResult Function(String errorMsg) transactionNotFound,
  }) {
    return transactionNotFound(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? userNotFount,
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? accountNotFont,
    TResult? Function(String errorMsg)? transactionNotFound,
  }) {
    return transactionNotFound?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? userNotFount,
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? accountNotFont,
    TResult Function(String errorMsg)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (transactionNotFound != null) {
      return transactionNotFound(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFount value) userNotFount,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_AccountNotFont value) accountNotFont,
    required TResult Function(_TransactionNotFound value) transactionNotFound,
  }) {
    return transactionNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotFount value)? userNotFount,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_AccountNotFont value)? accountNotFont,
    TResult? Function(_TransactionNotFound value)? transactionNotFound,
  }) {
    return transactionNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFount value)? userNotFount,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_AccountNotFont value)? accountNotFont,
    TResult Function(_TransactionNotFound value)? transactionNotFound,
    required TResult orElse(),
  }) {
    if (transactionNotFound != null) {
      return transactionNotFound(this);
    }
    return orElse();
  }
}

abstract class _TransactionNotFound implements UserFailure {
  const factory _TransactionNotFound({required final String errorMsg}) =
      _$TransactionNotFoundImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$TransactionNotFoundImplCopyWith<_$TransactionNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
