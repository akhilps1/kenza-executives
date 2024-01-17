// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  String get errorMsg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) invalidUserName,
    required TResult Function(String errorMsg) invalidPassword,
    required TResult Function(String errorMsg) limitReached,
    required TResult Function(String errorMsg) invalidAmount,
    required TResult Function(String errorMsg) monthlyLimitExeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? invalidUserName,
    TResult? Function(String errorMsg)? invalidPassword,
    TResult? Function(String errorMsg)? limitReached,
    TResult? Function(String errorMsg)? invalidAmount,
    TResult? Function(String errorMsg)? monthlyLimitExeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? invalidUserName,
    TResult Function(String errorMsg)? invalidPassword,
    TResult Function(String errorMsg)? limitReached,
    TResult Function(String errorMsg)? invalidAmount,
    TResult Function(String errorMsg)? monthlyLimitExeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidUserName,
    required TResult Function(InvlidPassword<T> value) invalidPassword,
    required TResult Function(LimitReached<T> value) limitReached,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(MonthlyLimitExeeded<T> value) monthlyLimitExeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidUserName,
    TResult? Function(InvlidPassword<T> value)? invalidPassword,
    TResult? Function(LimitReached<T> value)? limitReached,
    TResult? Function(InvalidAmount<T> value)? invalidAmount,
    TResult? Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidUserName,
    TResult Function(InvlidPassword<T> value)? invalidPassword,
    TResult Function(LimitReached<T> value)? limitReached,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUserName(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) invalidUserName,
    required TResult Function(String errorMsg) invalidPassword,
    required TResult Function(String errorMsg) limitReached,
    required TResult Function(String errorMsg) invalidAmount,
    required TResult Function(String errorMsg) monthlyLimitExeeded,
  }) {
    return invalidUserName(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? invalidUserName,
    TResult? Function(String errorMsg)? invalidPassword,
    TResult? Function(String errorMsg)? limitReached,
    TResult? Function(String errorMsg)? invalidAmount,
    TResult? Function(String errorMsg)? monthlyLimitExeeded,
  }) {
    return invalidUserName?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? invalidUserName,
    TResult Function(String errorMsg)? invalidPassword,
    TResult Function(String errorMsg)? limitReached,
    TResult Function(String errorMsg)? invalidAmount,
    TResult Function(String errorMsg)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (invalidUserName != null) {
      return invalidUserName(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidUserName,
    required TResult Function(InvlidPassword<T> value) invalidPassword,
    required TResult Function(LimitReached<T> value) limitReached,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(MonthlyLimitExeeded<T> value) monthlyLimitExeeded,
  }) {
    return invalidUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidUserName,
    TResult? Function(InvlidPassword<T> value)? invalidPassword,
    TResult? Function(LimitReached<T> value)? limitReached,
    TResult? Function(InvalidAmount<T> value)? invalidAmount,
    TResult? Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
  }) {
    return invalidUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidUserName,
    TResult Function(InvlidPassword<T> value)? invalidPassword,
    TResult Function(LimitReached<T> value)? limitReached,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (invalidUserName != null) {
      return invalidUserName(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final String errorMsg}) =
      _$InvalidEmailImpl<T>;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvlidPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvlidPasswordImplCopyWith(_$InvlidPasswordImpl<T> value,
          $Res Function(_$InvlidPasswordImpl<T>) then) =
      __$$InvlidPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$InvlidPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvlidPasswordImpl<T>>
    implements _$$InvlidPasswordImplCopyWith<T, $Res> {
  __$$InvlidPasswordImplCopyWithImpl(_$InvlidPasswordImpl<T> _value,
      $Res Function(_$InvlidPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$InvlidPasswordImpl<T>(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvlidPasswordImpl<T> implements InvlidPassword<T> {
  const _$InvlidPasswordImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvlidPasswordImpl<T> &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvlidPasswordImplCopyWith<T, _$InvlidPasswordImpl<T>> get copyWith =>
      __$$InvlidPasswordImplCopyWithImpl<T, _$InvlidPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) invalidUserName,
    required TResult Function(String errorMsg) invalidPassword,
    required TResult Function(String errorMsg) limitReached,
    required TResult Function(String errorMsg) invalidAmount,
    required TResult Function(String errorMsg) monthlyLimitExeeded,
  }) {
    return invalidPassword(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? invalidUserName,
    TResult? Function(String errorMsg)? invalidPassword,
    TResult? Function(String errorMsg)? limitReached,
    TResult? Function(String errorMsg)? invalidAmount,
    TResult? Function(String errorMsg)? monthlyLimitExeeded,
  }) {
    return invalidPassword?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? invalidUserName,
    TResult Function(String errorMsg)? invalidPassword,
    TResult Function(String errorMsg)? limitReached,
    TResult Function(String errorMsg)? invalidAmount,
    TResult Function(String errorMsg)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidUserName,
    required TResult Function(InvlidPassword<T> value) invalidPassword,
    required TResult Function(LimitReached<T> value) limitReached,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(MonthlyLimitExeeded<T> value) monthlyLimitExeeded,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidUserName,
    TResult? Function(InvlidPassword<T> value)? invalidPassword,
    TResult? Function(LimitReached<T> value)? limitReached,
    TResult? Function(InvalidAmount<T> value)? invalidAmount,
    TResult? Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidUserName,
    TResult Function(InvlidPassword<T> value)? invalidPassword,
    TResult Function(LimitReached<T> value)? limitReached,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvlidPassword<T> implements ValueFailure<T> {
  const factory InvlidPassword({required final String errorMsg}) =
      _$InvlidPasswordImpl<T>;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$InvlidPasswordImplCopyWith<T, _$InvlidPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LimitReachedImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$LimitReachedImplCopyWith(_$LimitReachedImpl<T> value,
          $Res Function(_$LimitReachedImpl<T>) then) =
      __$$LimitReachedImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$LimitReachedImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$LimitReachedImpl<T>>
    implements _$$LimitReachedImplCopyWith<T, $Res> {
  __$$LimitReachedImplCopyWithImpl(
      _$LimitReachedImpl<T> _value, $Res Function(_$LimitReachedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$LimitReachedImpl<T>(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LimitReachedImpl<T> implements LimitReached<T> {
  const _$LimitReachedImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ValueFailure<$T>.limitReached(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LimitReachedImpl<T> &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LimitReachedImplCopyWith<T, _$LimitReachedImpl<T>> get copyWith =>
      __$$LimitReachedImplCopyWithImpl<T, _$LimitReachedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) invalidUserName,
    required TResult Function(String errorMsg) invalidPassword,
    required TResult Function(String errorMsg) limitReached,
    required TResult Function(String errorMsg) invalidAmount,
    required TResult Function(String errorMsg) monthlyLimitExeeded,
  }) {
    return limitReached(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? invalidUserName,
    TResult? Function(String errorMsg)? invalidPassword,
    TResult? Function(String errorMsg)? limitReached,
    TResult? Function(String errorMsg)? invalidAmount,
    TResult? Function(String errorMsg)? monthlyLimitExeeded,
  }) {
    return limitReached?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? invalidUserName,
    TResult Function(String errorMsg)? invalidPassword,
    TResult Function(String errorMsg)? limitReached,
    TResult Function(String errorMsg)? invalidAmount,
    TResult Function(String errorMsg)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (limitReached != null) {
      return limitReached(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidUserName,
    required TResult Function(InvlidPassword<T> value) invalidPassword,
    required TResult Function(LimitReached<T> value) limitReached,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(MonthlyLimitExeeded<T> value) monthlyLimitExeeded,
  }) {
    return limitReached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidUserName,
    TResult? Function(InvlidPassword<T> value)? invalidPassword,
    TResult? Function(LimitReached<T> value)? limitReached,
    TResult? Function(InvalidAmount<T> value)? invalidAmount,
    TResult? Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
  }) {
    return limitReached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidUserName,
    TResult Function(InvlidPassword<T> value)? invalidPassword,
    TResult Function(LimitReached<T> value)? limitReached,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (limitReached != null) {
      return limitReached(this);
    }
    return orElse();
  }
}

abstract class LimitReached<T> implements ValueFailure<T> {
  const factory LimitReached({required final String errorMsg}) =
      _$LimitReachedImpl<T>;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$LimitReachedImplCopyWith<T, _$LimitReachedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidAmountImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidAmountImplCopyWith(_$InvalidAmountImpl<T> value,
          $Res Function(_$InvalidAmountImpl<T>) then) =
      __$$InvalidAmountImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$InvalidAmountImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidAmountImpl<T>>
    implements _$$InvalidAmountImplCopyWith<T, $Res> {
  __$$InvalidAmountImplCopyWithImpl(_$InvalidAmountImpl<T> _value,
      $Res Function(_$InvalidAmountImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$InvalidAmountImpl<T>(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidAmountImpl<T> implements InvalidAmount<T> {
  const _$InvalidAmountImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidAmount(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidAmountImpl<T> &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidAmountImplCopyWith<T, _$InvalidAmountImpl<T>> get copyWith =>
      __$$InvalidAmountImplCopyWithImpl<T, _$InvalidAmountImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) invalidUserName,
    required TResult Function(String errorMsg) invalidPassword,
    required TResult Function(String errorMsg) limitReached,
    required TResult Function(String errorMsg) invalidAmount,
    required TResult Function(String errorMsg) monthlyLimitExeeded,
  }) {
    return invalidAmount(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? invalidUserName,
    TResult? Function(String errorMsg)? invalidPassword,
    TResult? Function(String errorMsg)? limitReached,
    TResult? Function(String errorMsg)? invalidAmount,
    TResult? Function(String errorMsg)? monthlyLimitExeeded,
  }) {
    return invalidAmount?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? invalidUserName,
    TResult Function(String errorMsg)? invalidPassword,
    TResult Function(String errorMsg)? limitReached,
    TResult Function(String errorMsg)? invalidAmount,
    TResult Function(String errorMsg)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidUserName,
    required TResult Function(InvlidPassword<T> value) invalidPassword,
    required TResult Function(LimitReached<T> value) limitReached,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(MonthlyLimitExeeded<T> value) monthlyLimitExeeded,
  }) {
    return invalidAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidUserName,
    TResult? Function(InvlidPassword<T> value)? invalidPassword,
    TResult? Function(LimitReached<T> value)? limitReached,
    TResult? Function(InvalidAmount<T> value)? invalidAmount,
    TResult? Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
  }) {
    return invalidAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidUserName,
    TResult Function(InvlidPassword<T> value)? invalidPassword,
    TResult Function(LimitReached<T> value)? limitReached,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(this);
    }
    return orElse();
  }
}

abstract class InvalidAmount<T> implements ValueFailure<T> {
  const factory InvalidAmount({required final String errorMsg}) =
      _$InvalidAmountImpl<T>;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$InvalidAmountImplCopyWith<T, _$InvalidAmountImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonthlyLimitExeededImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MonthlyLimitExeededImplCopyWith(_$MonthlyLimitExeededImpl<T> value,
          $Res Function(_$MonthlyLimitExeededImpl<T>) then) =
      __$$MonthlyLimitExeededImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$MonthlyLimitExeededImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MonthlyLimitExeededImpl<T>>
    implements _$$MonthlyLimitExeededImplCopyWith<T, $Res> {
  __$$MonthlyLimitExeededImplCopyWithImpl(_$MonthlyLimitExeededImpl<T> _value,
      $Res Function(_$MonthlyLimitExeededImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$MonthlyLimitExeededImpl<T>(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MonthlyLimitExeededImpl<T> implements MonthlyLimitExeeded<T> {
  const _$MonthlyLimitExeededImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ValueFailure<$T>.monthlyLimitExeeded(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyLimitExeededImpl<T> &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyLimitExeededImplCopyWith<T, _$MonthlyLimitExeededImpl<T>>
      get copyWith => __$$MonthlyLimitExeededImplCopyWithImpl<T,
          _$MonthlyLimitExeededImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) invalidUserName,
    required TResult Function(String errorMsg) invalidPassword,
    required TResult Function(String errorMsg) limitReached,
    required TResult Function(String errorMsg) invalidAmount,
    required TResult Function(String errorMsg) monthlyLimitExeeded,
  }) {
    return monthlyLimitExeeded(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? invalidUserName,
    TResult? Function(String errorMsg)? invalidPassword,
    TResult? Function(String errorMsg)? limitReached,
    TResult? Function(String errorMsg)? invalidAmount,
    TResult? Function(String errorMsg)? monthlyLimitExeeded,
  }) {
    return monthlyLimitExeeded?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? invalidUserName,
    TResult Function(String errorMsg)? invalidPassword,
    TResult Function(String errorMsg)? limitReached,
    TResult Function(String errorMsg)? invalidAmount,
    TResult Function(String errorMsg)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (monthlyLimitExeeded != null) {
      return monthlyLimitExeeded(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidUserName,
    required TResult Function(InvlidPassword<T> value) invalidPassword,
    required TResult Function(LimitReached<T> value) limitReached,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(MonthlyLimitExeeded<T> value) monthlyLimitExeeded,
  }) {
    return monthlyLimitExeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidUserName,
    TResult? Function(InvlidPassword<T> value)? invalidPassword,
    TResult? Function(LimitReached<T> value)? limitReached,
    TResult? Function(InvalidAmount<T> value)? invalidAmount,
    TResult? Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
  }) {
    return monthlyLimitExeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidUserName,
    TResult Function(InvlidPassword<T> value)? invalidPassword,
    TResult Function(LimitReached<T> value)? limitReached,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(MonthlyLimitExeeded<T> value)? monthlyLimitExeeded,
    required TResult orElse(),
  }) {
    if (monthlyLimitExeeded != null) {
      return monthlyLimitExeeded(this);
    }
    return orElse();
  }
}

abstract class MonthlyLimitExeeded<T> implements ValueFailure<T> {
  const factory MonthlyLimitExeeded({required final String errorMsg}) =
      _$MonthlyLimitExeededImpl<T>;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$MonthlyLimitExeededImplCopyWith<T, _$MonthlyLimitExeededImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
