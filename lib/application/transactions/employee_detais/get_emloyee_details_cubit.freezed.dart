// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_emloyee_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetEmloyeeDetailsState {
  Executive? get executive => throw _privateConstructorUsedError;
  PaymentKeys? get paymentKeys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetEmloyeeDetailsStateCopyWith<GetEmloyeeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEmloyeeDetailsStateCopyWith<$Res> {
  factory $GetEmloyeeDetailsStateCopyWith(GetEmloyeeDetailsState value,
          $Res Function(GetEmloyeeDetailsState) then) =
      _$GetEmloyeeDetailsStateCopyWithImpl<$Res, GetEmloyeeDetailsState>;
  @useResult
  $Res call({Executive? executive, PaymentKeys? paymentKeys});
}

/// @nodoc
class _$GetEmloyeeDetailsStateCopyWithImpl<$Res,
        $Val extends GetEmloyeeDetailsState>
    implements $GetEmloyeeDetailsStateCopyWith<$Res> {
  _$GetEmloyeeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executive = freezed,
    Object? paymentKeys = freezed,
  }) {
    return _then(_value.copyWith(
      executive: freezed == executive
          ? _value.executive
          : executive // ignore: cast_nullable_to_non_nullable
              as Executive?,
      paymentKeys: freezed == paymentKeys
          ? _value.paymentKeys
          : paymentKeys // ignore: cast_nullable_to_non_nullable
              as PaymentKeys?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEmloyeeDetailsStateImplCopyWith<$Res>
    implements $GetEmloyeeDetailsStateCopyWith<$Res> {
  factory _$$GetEmloyeeDetailsStateImplCopyWith(
          _$GetEmloyeeDetailsStateImpl value,
          $Res Function(_$GetEmloyeeDetailsStateImpl) then) =
      __$$GetEmloyeeDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Executive? executive, PaymentKeys? paymentKeys});
}

/// @nodoc
class __$$GetEmloyeeDetailsStateImplCopyWithImpl<$Res>
    extends _$GetEmloyeeDetailsStateCopyWithImpl<$Res,
        _$GetEmloyeeDetailsStateImpl>
    implements _$$GetEmloyeeDetailsStateImplCopyWith<$Res> {
  __$$GetEmloyeeDetailsStateImplCopyWithImpl(
      _$GetEmloyeeDetailsStateImpl _value,
      $Res Function(_$GetEmloyeeDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executive = freezed,
    Object? paymentKeys = freezed,
  }) {
    return _then(_$GetEmloyeeDetailsStateImpl(
      executive: freezed == executive
          ? _value.executive
          : executive // ignore: cast_nullable_to_non_nullable
              as Executive?,
      paymentKeys: freezed == paymentKeys
          ? _value.paymentKeys
          : paymentKeys // ignore: cast_nullable_to_non_nullable
              as PaymentKeys?,
    ));
  }
}

/// @nodoc

class _$GetEmloyeeDetailsStateImpl implements _GetEmloyeeDetailsState {
  const _$GetEmloyeeDetailsStateImpl(
      {required this.executive, required this.paymentKeys});

  @override
  final Executive? executive;
  @override
  final PaymentKeys? paymentKeys;

  @override
  String toString() {
    return 'GetEmloyeeDetailsState(executive: $executive, paymentKeys: $paymentKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmloyeeDetailsStateImpl &&
            (identical(other.executive, executive) ||
                other.executive == executive) &&
            (identical(other.paymentKeys, paymentKeys) ||
                other.paymentKeys == paymentKeys));
  }

  @override
  int get hashCode => Object.hash(runtimeType, executive, paymentKeys);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmloyeeDetailsStateImplCopyWith<_$GetEmloyeeDetailsStateImpl>
      get copyWith => __$$GetEmloyeeDetailsStateImplCopyWithImpl<
          _$GetEmloyeeDetailsStateImpl>(this, _$identity);
}

abstract class _GetEmloyeeDetailsState implements GetEmloyeeDetailsState {
  const factory _GetEmloyeeDetailsState(
      {required final Executive? executive,
      required final PaymentKeys? paymentKeys}) = _$GetEmloyeeDetailsStateImpl;

  @override
  Executive? get executive;
  @override
  PaymentKeys? get paymentKeys;
  @override
  @JsonKey(ignore: true)
  _$$GetEmloyeeDetailsStateImplCopyWith<_$GetEmloyeeDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
