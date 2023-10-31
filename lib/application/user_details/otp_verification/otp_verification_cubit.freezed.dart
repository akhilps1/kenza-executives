// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpVerificationState {
  String get smsCode => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  Option<UserFailure> get failureOption => throw _privateConstructorUsedError;
  Option<String> get verificationIdOption => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get otpVerifyFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Unit> get otpVerifySuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value,
          $Res Function(OtpVerificationState) then) =
      _$OtpVerificationStateCopyWithImpl<$Res, OtpVerificationState>;
  @useResult
  $Res call(
      {String smsCode,
      String verificationId,
      Option<UserFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress,
      Option<Either<UserFailure, Unit>> otpVerifyFailureOrSuccess,
      Option<Unit> otpVerifySuccess});
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res,
        $Val extends OtpVerificationState>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
    Object? verificationId = null,
    Object? failureOption = null,
    Object? verificationIdOption = null,
    Object? isInProgress = null,
    Object? otpVerifyFailureOrSuccess = null,
    Object? otpVerifySuccess = null,
  }) {
    return _then(_value.copyWith(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<UserFailure>,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerifyFailureOrSuccess: null == otpVerifyFailureOrSuccess
          ? _value.otpVerifyFailureOrSuccess
          : otpVerifyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
      otpVerifySuccess: null == otpVerifySuccess
          ? _value.otpVerifySuccess
          : otpVerifySuccess // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpVerificationStateImplCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$$OtpVerificationStateImplCopyWith(_$OtpVerificationStateImpl value,
          $Res Function(_$OtpVerificationStateImpl) then) =
      __$$OtpVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String smsCode,
      String verificationId,
      Option<UserFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress,
      Option<Either<UserFailure, Unit>> otpVerifyFailureOrSuccess,
      Option<Unit> otpVerifySuccess});
}

/// @nodoc
class __$$OtpVerificationStateImplCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res, _$OtpVerificationStateImpl>
    implements _$$OtpVerificationStateImplCopyWith<$Res> {
  __$$OtpVerificationStateImplCopyWithImpl(_$OtpVerificationStateImpl _value,
      $Res Function(_$OtpVerificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
    Object? verificationId = null,
    Object? failureOption = null,
    Object? verificationIdOption = null,
    Object? isInProgress = null,
    Object? otpVerifyFailureOrSuccess = null,
    Object? otpVerifySuccess = null,
  }) {
    return _then(_$OtpVerificationStateImpl(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<UserFailure>,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerifyFailureOrSuccess: null == otpVerifyFailureOrSuccess
          ? _value.otpVerifyFailureOrSuccess
          : otpVerifyFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
      otpVerifySuccess: null == otpVerifySuccess
          ? _value.otpVerifySuccess
          : otpVerifySuccess // ignore: cast_nullable_to_non_nullable
              as Option<Unit>,
    ));
  }
}

/// @nodoc

class _$OtpVerificationStateImpl implements _OtpVerificationState {
  const _$OtpVerificationStateImpl(
      {required this.smsCode,
      required this.verificationId,
      required this.failureOption,
      required this.verificationIdOption,
      required this.isInProgress,
      required this.otpVerifyFailureOrSuccess,
      required this.otpVerifySuccess});

  @override
  final String smsCode;
  @override
  final String verificationId;
  @override
  final Option<UserFailure> failureOption;
  @override
  final Option<String> verificationIdOption;
  @override
  final bool isInProgress;
  @override
  final Option<Either<UserFailure, Unit>> otpVerifyFailureOrSuccess;
  @override
  final Option<Unit> otpVerifySuccess;

  @override
  String toString() {
    return 'OtpVerificationState(smsCode: $smsCode, verificationId: $verificationId, failureOption: $failureOption, verificationIdOption: $verificationIdOption, isInProgress: $isInProgress, otpVerifyFailureOrSuccess: $otpVerifyFailureOrSuccess, otpVerifySuccess: $otpVerifySuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationStateImpl &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.verificationIdOption, verificationIdOption) ||
                other.verificationIdOption == verificationIdOption) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.otpVerifyFailureOrSuccess,
                    otpVerifyFailureOrSuccess) ||
                other.otpVerifyFailureOrSuccess == otpVerifyFailureOrSuccess) &&
            (identical(other.otpVerifySuccess, otpVerifySuccess) ||
                other.otpVerifySuccess == otpVerifySuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      smsCode,
      verificationId,
      failureOption,
      verificationIdOption,
      isInProgress,
      otpVerifyFailureOrSuccess,
      otpVerifySuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith =>
          __$$OtpVerificationStateImplCopyWithImpl<_$OtpVerificationStateImpl>(
              this, _$identity);
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState(
          {required final String smsCode,
          required final String verificationId,
          required final Option<UserFailure> failureOption,
          required final Option<String> verificationIdOption,
          required final bool isInProgress,
          required final Option<Either<UserFailure, Unit>>
              otpVerifyFailureOrSuccess,
          required final Option<Unit> otpVerifySuccess}) =
      _$OtpVerificationStateImpl;

  @override
  String get smsCode;
  @override
  String get verificationId;
  @override
  Option<UserFailure> get failureOption;
  @override
  Option<String> get verificationIdOption;
  @override
  bool get isInProgress;
  @override
  Option<Either<UserFailure, Unit>> get otpVerifyFailureOrSuccess;
  @override
  Option<Unit> get otpVerifySuccess;
  @override
  @JsonKey(ignore: true)
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
