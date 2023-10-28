// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res, UserDetailsEvent>;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res, $Val extends UserDetailsEvent>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllAccountsImplCopyWith<$Res> {
  factory _$$GetAllAccountsImplCopyWith(_$GetAllAccountsImpl value,
          $Res Function(_$GetAllAccountsImpl) then) =
      __$$GetAllAccountsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String branchId});
}

/// @nodoc
class __$$GetAllAccountsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetAllAccountsImpl>
    implements _$$GetAllAccountsImplCopyWith<$Res> {
  __$$GetAllAccountsImplCopyWithImpl(
      _$GetAllAccountsImpl _value, $Res Function(_$GetAllAccountsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? branchId = null,
  }) {
    return _then(_$GetAllAccountsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllAccountsImpl implements GetAllAccounts {
  const _$GetAllAccountsImpl({required this.userId, required this.branchId});

  @override
  final String userId;
  @override
  final String branchId;

  @override
  String toString() {
    return 'UserDetailsEvent.getAllAccounts(userId: $userId, branchId: $branchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllAccountsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllAccountsImplCopyWith<_$GetAllAccountsImpl> get copyWith =>
      __$$GetAllAccountsImplCopyWithImpl<_$GetAllAccountsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
  }) {
    return getAllAccounts(userId, branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
  }) {
    return getAllAccounts?.call(userId, branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (getAllAccounts != null) {
      return getAllAccounts(userId, branchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
  }) {
    return getAllAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
  }) {
    return getAllAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (getAllAccounts != null) {
      return getAllAccounts(this);
    }
    return orElse();
  }
}

abstract class GetAllAccounts implements UserDetailsEvent {
  const factory GetAllAccounts(
      {required final String userId,
      required final String branchId}) = _$GetAllAccountsImpl;

  String get userId;
  String get branchId;
  @JsonKey(ignore: true)
  _$$GetAllAccountsImplCopyWith<_$GetAllAccountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllTransactionsImplCopyWith<$Res> {
  factory _$$GetAllTransactionsImplCopyWith(_$GetAllTransactionsImpl value,
          $Res Function(_$GetAllTransactionsImpl) then) =
      __$$GetAllTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String branchId});
}

/// @nodoc
class __$$GetAllTransactionsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetAllTransactionsImpl>
    implements _$$GetAllTransactionsImplCopyWith<$Res> {
  __$$GetAllTransactionsImplCopyWithImpl(_$GetAllTransactionsImpl _value,
      $Res Function(_$GetAllTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? branchId = null,
  }) {
    return _then(_$GetAllTransactionsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllTransactionsImpl implements GetAllTransactions {
  const _$GetAllTransactionsImpl(
      {required this.userId, required this.branchId});

  @override
  final String userId;
  @override
  final String branchId;

  @override
  String toString() {
    return 'UserDetailsEvent.getAllTransactions(userId: $userId, branchId: $branchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTransactionsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTransactionsImplCopyWith<_$GetAllTransactionsImpl> get copyWith =>
      __$$GetAllTransactionsImplCopyWithImpl<_$GetAllTransactionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
  }) {
    return getAllTransactions(userId, branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
  }) {
    return getAllTransactions?.call(userId, branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (getAllTransactions != null) {
      return getAllTransactions(userId, branchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
  }) {
    return getAllTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
  }) {
    return getAllTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (getAllTransactions != null) {
      return getAllTransactions(this);
    }
    return orElse();
  }
}

abstract class GetAllTransactions implements UserDetailsEvent {
  const factory GetAllTransactions(
      {required final String userId,
      required final String branchId}) = _$GetAllTransactionsImpl;

  String get userId;
  String get branchId;
  @JsonKey(ignore: true)
  _$$GetAllTransactionsImplCopyWith<_$GetAllTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearUserDetailsDataImplCopyWith<$Res> {
  factory _$$ClearUserDetailsDataImplCopyWith(_$ClearUserDetailsDataImpl value,
          $Res Function(_$ClearUserDetailsDataImpl) then) =
      __$$ClearUserDetailsDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUserDetailsDataImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$ClearUserDetailsDataImpl>
    implements _$$ClearUserDetailsDataImplCopyWith<$Res> {
  __$$ClearUserDetailsDataImplCopyWithImpl(_$ClearUserDetailsDataImpl _value,
      $Res Function(_$ClearUserDetailsDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearUserDetailsDataImpl implements ClearUserDetailsData {
  const _$ClearUserDetailsDataImpl();

  @override
  String toString() {
    return 'UserDetailsEvent.clearUserDetailsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearUserDetailsDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
  }) {
    return clearUserDetailsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
  }) {
    return clearUserDetailsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (clearUserDetailsData != null) {
      return clearUserDetailsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
  }) {
    return clearUserDetailsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
  }) {
    return clearUserDetailsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (clearUserDetailsData != null) {
      return clearUserDetailsData(this);
    }
    return orElse();
  }
}

abstract class ClearUserDetailsData implements UserDetailsEvent {
  const factory ClearUserDetailsData() = _$ClearUserDetailsDataImpl;
}

/// @nodoc
abstract class _$$AmountChangedImplCopyWith<$Res> {
  factory _$$AmountChangedImplCopyWith(
          _$AmountChangedImpl value, $Res Function(_$AmountChangedImpl) then) =
      __$$AmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num amount});
}

/// @nodoc
class __$$AmountChangedImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$AmountChangedImpl>
    implements _$$AmountChangedImplCopyWith<$Res> {
  __$$AmountChangedImplCopyWithImpl(
      _$AmountChangedImpl _value, $Res Function(_$AmountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$AmountChangedImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$AmountChangedImpl implements AmountChanged {
  const _$AmountChangedImpl(this.amount);

  @override
  final num amount;

  @override
  String toString() {
    return 'UserDetailsEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      __$$AmountChangedImplCopyWithImpl<_$AmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements UserDetailsEvent {
  const factory AmountChanged(final num amount) = _$AmountChangedImpl;

  num get amount;
  @JsonKey(ignore: true)
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMonthlyLimitImplCopyWith<$Res> {
  factory _$$GetMonthlyLimitImplCopyWith(_$GetMonthlyLimitImpl value,
          $Res Function(_$GetMonthlyLimitImpl) then) =
      __$$GetMonthlyLimitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetails userDetails});
}

/// @nodoc
class __$$GetMonthlyLimitImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetMonthlyLimitImpl>
    implements _$$GetMonthlyLimitImplCopyWith<$Res> {
  __$$GetMonthlyLimitImplCopyWithImpl(
      _$GetMonthlyLimitImpl _value, $Res Function(_$GetMonthlyLimitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
  }) {
    return _then(_$GetMonthlyLimitImpl(
      null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
    ));
  }
}

/// @nodoc

class _$GetMonthlyLimitImpl implements GetMonthlyLimit {
  const _$GetMonthlyLimitImpl(this.userDetails);

  @override
  final UserDetails userDetails;

  @override
  String toString() {
    return 'UserDetailsEvent.getMonthlyLimit(userDetails: $userDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMonthlyLimitImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMonthlyLimitImplCopyWith<_$GetMonthlyLimitImpl> get copyWith =>
      __$$GetMonthlyLimitImplCopyWithImpl<_$GetMonthlyLimitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
  }) {
    return getMonthlyLimit(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
  }) {
    return getMonthlyLimit?.call(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (getMonthlyLimit != null) {
      return getMonthlyLimit(userDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
  }) {
    return getMonthlyLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
  }) {
    return getMonthlyLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    required TResult orElse(),
  }) {
    if (getMonthlyLimit != null) {
      return getMonthlyLimit(this);
    }
    return orElse();
  }
}

abstract class GetMonthlyLimit implements UserDetailsEvent {
  const factory GetMonthlyLimit(final UserDetails userDetails) =
      _$GetMonthlyLimitImpl;

  UserDetails get userDetails;
  @JsonKey(ignore: true)
  _$$GetMonthlyLimitImplCopyWith<_$GetMonthlyLimitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get noMoredata => throw _privateConstructorUsedError;
  AutovalidateMode get showError => throw _privateConstructorUsedError;
  Amount get limit => throw _privateConstructorUsedError;
  AccountDetail? get account => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;
  List<TransactionDetails> get transactions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool noMoredata,
      AutovalidateMode showError,
      Amount limit,
      AccountDetail? account,
      Amount amount,
      List<TransactionDetails> transactions});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? noMoredata = null,
    Object? showError = null,
    Object? limit = null,
    Object? account = freezed,
    Object? amount = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoredata: null == noMoredata
          ? _value.noMoredata
          : noMoredata // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as Amount,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountDetail?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsStateImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsStateImplCopyWith(_$UserDetailsStateImpl value,
          $Res Function(_$UserDetailsStateImpl) then) =
      __$$UserDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool noMoredata,
      AutovalidateMode showError,
      Amount limit,
      AccountDetail? account,
      Amount amount,
      List<TransactionDetails> transactions});
}

/// @nodoc
class __$$UserDetailsStateImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsStateImpl>
    implements _$$UserDetailsStateImplCopyWith<$Res> {
  __$$UserDetailsStateImplCopyWithImpl(_$UserDetailsStateImpl _value,
      $Res Function(_$UserDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? noMoredata = null,
    Object? showError = null,
    Object? limit = null,
    Object? account = freezed,
    Object? amount = null,
    Object? transactions = null,
  }) {
    return _then(_$UserDetailsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoredata: null == noMoredata
          ? _value.noMoredata
          : noMoredata // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as Amount,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountDetail?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>,
    ));
  }
}

/// @nodoc

class _$UserDetailsStateImpl implements _UserDetailsState {
  const _$UserDetailsStateImpl(
      {required this.isLoading,
      required this.noMoredata,
      required this.showError,
      required this.limit,
      required this.account,
      required this.amount,
      required final List<TransactionDetails> transactions})
      : _transactions = transactions;

  @override
  final bool isLoading;
  @override
  final bool noMoredata;
  @override
  final AutovalidateMode showError;
  @override
  final Amount limit;
  @override
  final AccountDetail? account;
  @override
  final Amount amount;
  final List<TransactionDetails> _transactions;
  @override
  List<TransactionDetails> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'UserDetailsState(isLoading: $isLoading, noMoredata: $noMoredata, showError: $showError, limit: $limit, account: $account, amount: $amount, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.noMoredata, noMoredata) ||
                other.noMoredata == noMoredata) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      noMoredata,
      showError,
      limit,
      account,
      amount,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsStateImplCopyWith<_$UserDetailsStateImpl> get copyWith =>
      __$$UserDetailsStateImplCopyWithImpl<_$UserDetailsStateImpl>(
          this, _$identity);
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState(
          {required final bool isLoading,
          required final bool noMoredata,
          required final AutovalidateMode showError,
          required final Amount limit,
          required final AccountDetail? account,
          required final Amount amount,
          required final List<TransactionDetails> transactions}) =
      _$UserDetailsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get noMoredata;
  @override
  AutovalidateMode get showError;
  @override
  Amount get limit;
  @override
  AccountDetail? get account;
  @override
  Amount get amount;
  @override
  List<TransactionDetails> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsStateImplCopyWith<_$UserDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
