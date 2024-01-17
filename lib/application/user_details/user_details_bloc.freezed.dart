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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllAccounts value) getAllAccounts,
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(ClearUserDetailsData value) clearUserDetailsData,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
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
  bool operator ==(Object other) {
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
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
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
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
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
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
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
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
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
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
  bool operator ==(Object other) {
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
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
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
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
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
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
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
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
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
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
  bool operator ==(Object other) {
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
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
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
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
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
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
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
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
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
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
  bool operator ==(Object other) {
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
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
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
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
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
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
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
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
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
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
abstract class _$$NoteChangedImplCopyWith<$Res> {
  factory _$$NoteChangedImplCopyWith(
          _$NoteChangedImpl value, $Res Function(_$NoteChangedImpl) then) =
      __$$NoteChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String note});
}

/// @nodoc
class __$$NoteChangedImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$NoteChangedImpl>
    implements _$$NoteChangedImplCopyWith<$Res> {
  __$$NoteChangedImplCopyWithImpl(
      _$NoteChangedImpl _value, $Res Function(_$NoteChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$NoteChangedImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteChangedImpl implements NoteChanged {
  const _$NoteChangedImpl(this.note);

  @override
  final String note;

  @override
  String toString() {
    return 'UserDetailsEvent.noteChanged(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteChangedImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteChangedImplCopyWith<_$NoteChangedImpl> get copyWith =>
      __$$NoteChangedImplCopyWithImpl<_$NoteChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return noteChanged(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return noteChanged?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (noteChanged != null) {
      return noteChanged(note);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return noteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return noteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (noteChanged != null) {
      return noteChanged(this);
    }
    return orElse();
  }
}

abstract class NoteChanged implements UserDetailsEvent {
  const factory NoteChanged(final String note) = _$NoteChangedImpl;

  String get note;
  @JsonKey(ignore: true)
  _$$NoteChangedImplCopyWith<_$NoteChangedImpl> get copyWith =>
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
  bool operator ==(Object other) {
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
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
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
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
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
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
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
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
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
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
abstract class _$$ReceveAmountImplCopyWith<$Res> {
  factory _$$ReceveAmountImplCopyWith(
          _$ReceveAmountImpl value, $Res Function(_$ReceveAmountImpl) then) =
      __$$ReceveAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetails userDetails, String employeeId});
}

/// @nodoc
class __$$ReceveAmountImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$ReceveAmountImpl>
    implements _$$ReceveAmountImplCopyWith<$Res> {
  __$$ReceveAmountImplCopyWithImpl(
      _$ReceveAmountImpl _value, $Res Function(_$ReceveAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
    Object? employeeId = null,
  }) {
    return _then(_$ReceveAmountImpl(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceveAmountImpl implements ReceveAmount {
  const _$ReceveAmountImpl(
      {required this.userDetails, required this.employeeId});

  @override
  final UserDetails userDetails;
  @override
  final String employeeId;

  @override
  String toString() {
    return 'UserDetailsEvent.receveAmount(userDetails: $userDetails, employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceveAmountImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetails, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceveAmountImplCopyWith<_$ReceveAmountImpl> get copyWith =>
      __$$ReceveAmountImplCopyWithImpl<_$ReceveAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return receveAmount(userDetails, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return receveAmount?.call(userDetails, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (receveAmount != null) {
      return receveAmount(userDetails, employeeId);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return receveAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return receveAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (receveAmount != null) {
      return receveAmount(this);
    }
    return orElse();
  }
}

abstract class ReceveAmount implements UserDetailsEvent {
  const factory ReceveAmount(
      {required final UserDetails userDetails,
      required final String employeeId}) = _$ReceveAmountImpl;

  UserDetails get userDetails;
  String get employeeId;
  @JsonKey(ignore: true)
  _$$ReceveAmountImplCopyWith<_$ReceveAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTransactionImplCopyWith<$Res> {
  factory _$$AddTransactionImplCopyWith(_$AddTransactionImpl value,
          $Res Function(_$AddTransactionImpl) then) =
      __$$AddTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserDetails userDetails, DailyCollectionDetails dailyCollectionDetails});
}

/// @nodoc
class __$$AddTransactionImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$AddTransactionImpl>
    implements _$$AddTransactionImplCopyWith<$Res> {
  __$$AddTransactionImplCopyWithImpl(
      _$AddTransactionImpl _value, $Res Function(_$AddTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
    Object? dailyCollectionDetails = null,
  }) {
    return _then(_$AddTransactionImpl(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
      dailyCollectionDetails: null == dailyCollectionDetails
          ? _value.dailyCollectionDetails
          : dailyCollectionDetails // ignore: cast_nullable_to_non_nullable
              as DailyCollectionDetails,
    ));
  }
}

/// @nodoc

class _$AddTransactionImpl implements _AddTransaction {
  const _$AddTransactionImpl(
      {required this.userDetails, required this.dailyCollectionDetails});

  @override
  final UserDetails userDetails;
  @override
  final DailyCollectionDetails dailyCollectionDetails;

  @override
  String toString() {
    return 'UserDetailsEvent.addTransaction(userDetails: $userDetails, dailyCollectionDetails: $dailyCollectionDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.dailyCollectionDetails, dailyCollectionDetails) ||
                other.dailyCollectionDetails == dailyCollectionDetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userDetails, dailyCollectionDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionImplCopyWith<_$AddTransactionImpl> get copyWith =>
      __$$AddTransactionImplCopyWithImpl<_$AddTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return addTransaction(userDetails, dailyCollectionDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return addTransaction?.call(userDetails, dailyCollectionDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(userDetails, dailyCollectionDetails);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class _AddTransaction implements UserDetailsEvent {
  const factory _AddTransaction(
          {required final UserDetails userDetails,
          required final DailyCollectionDetails dailyCollectionDetails}) =
      _$AddTransactionImpl;

  UserDetails get userDetails;
  DailyCollectionDetails get dailyCollectionDetails;
  @JsonKey(ignore: true)
  _$$AddTransactionImplCopyWith<_$AddTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateNewAccountImplCopyWith<$Res> {
  factory _$$CreateNewAccountImplCopyWith(_$CreateNewAccountImpl value,
          $Res Function(_$CreateNewAccountImpl) then) =
      __$$CreateNewAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetails userDetails, String employeeId});
}

/// @nodoc
class __$$CreateNewAccountImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$CreateNewAccountImpl>
    implements _$$CreateNewAccountImplCopyWith<$Res> {
  __$$CreateNewAccountImplCopyWithImpl(_$CreateNewAccountImpl _value,
      $Res Function(_$CreateNewAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
    Object? employeeId = null,
  }) {
    return _then(_$CreateNewAccountImpl(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNewAccountImpl implements CreateNewAccount {
  const _$CreateNewAccountImpl(
      {required this.userDetails, required this.employeeId});

  @override
  final UserDetails userDetails;
  @override
  final String employeeId;

  @override
  String toString() {
    return 'UserDetailsEvent.createNewAccount(userDetails: $userDetails, employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewAccountImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetails, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewAccountImplCopyWith<_$CreateNewAccountImpl> get copyWith =>
      __$$CreateNewAccountImplCopyWithImpl<_$CreateNewAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return createNewAccount(userDetails, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return createNewAccount?.call(userDetails, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (createNewAccount != null) {
      return createNewAccount(userDetails, employeeId);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return createNewAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return createNewAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (createNewAccount != null) {
      return createNewAccount(this);
    }
    return orElse();
  }
}

abstract class CreateNewAccount implements UserDetailsEvent {
  const factory CreateNewAccount(
      {required final UserDetails userDetails,
      required final String employeeId}) = _$CreateNewAccountImpl;

  UserDetails get userDetails;
  String get employeeId;
  @JsonKey(ignore: true)
  _$$CreateNewAccountImplCopyWith<_$CreateNewAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstTimePaymentImplCopyWith<$Res> {
  factory _$$FirstTimePaymentImplCopyWith(_$FirstTimePaymentImpl value,
          $Res Function(_$FirstTimePaymentImpl) then) =
      __$$FirstTimePaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool firstTime});
}

/// @nodoc
class __$$FirstTimePaymentImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$FirstTimePaymentImpl>
    implements _$$FirstTimePaymentImplCopyWith<$Res> {
  __$$FirstTimePaymentImplCopyWithImpl(_$FirstTimePaymentImpl _value,
      $Res Function(_$FirstTimePaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstTime = null,
  }) {
    return _then(_$FirstTimePaymentImpl(
      null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FirstTimePaymentImpl implements FirstTimePayment {
  const _$FirstTimePaymentImpl(this.firstTime);

  @override
  final bool firstTime;

  @override
  String toString() {
    return 'UserDetailsEvent.firstTimePayment(firstTime: $firstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstTimePaymentImpl &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstTimePaymentImplCopyWith<_$FirstTimePaymentImpl> get copyWith =>
      __$$FirstTimePaymentImplCopyWithImpl<_$FirstTimePaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return firstTimePayment(firstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return firstTimePayment?.call(firstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (firstTimePayment != null) {
      return firstTimePayment(firstTime);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return firstTimePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return firstTimePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (firstTimePayment != null) {
      return firstTimePayment(this);
    }
    return orElse();
  }
}

abstract class FirstTimePayment implements UserDetailsEvent {
  const factory FirstTimePayment(final bool firstTime) = _$FirstTimePaymentImpl;

  bool get firstTime;
  @JsonKey(ignore: true)
  _$$FirstTimePaymentImplCopyWith<_$FirstTimePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCashAndBankDetailsImplCopyWith<$Res> {
  factory _$$GetCashAndBankDetailsImplCopyWith(
          _$GetCashAndBankDetailsImpl value,
          $Res Function(_$GetCashAndBankDetailsImpl) then) =
      __$$GetCashAndBankDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String branchId});
}

/// @nodoc
class __$$GetCashAndBankDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetCashAndBankDetailsImpl>
    implements _$$GetCashAndBankDetailsImplCopyWith<$Res> {
  __$$GetCashAndBankDetailsImplCopyWithImpl(_$GetCashAndBankDetailsImpl _value,
      $Res Function(_$GetCashAndBankDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
  }) {
    return _then(_$GetCashAndBankDetailsImpl(
      null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCashAndBankDetailsImpl implements GetCashAndBankDetails {
  const _$GetCashAndBankDetailsImpl(this.branchId);

  @override
  final String branchId;

  @override
  String toString() {
    return 'UserDetailsEvent.getCashAndBankDetails(branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCashAndBankDetailsImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCashAndBankDetailsImplCopyWith<_$GetCashAndBankDetailsImpl>
      get copyWith => __$$GetCashAndBankDetailsImplCopyWithImpl<
          _$GetCashAndBankDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return getCashAndBankDetails(branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return getCashAndBankDetails?.call(branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (getCashAndBankDetails != null) {
      return getCashAndBankDetails(branchId);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return getCashAndBankDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return getCashAndBankDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (getCashAndBankDetails != null) {
      return getCashAndBankDetails(this);
    }
    return orElse();
  }
}

abstract class GetCashAndBankDetails implements UserDetailsEvent {
  const factory GetCashAndBankDetails(final String branchId) =
      _$GetCashAndBankDetailsImpl;

  String get branchId;
  @JsonKey(ignore: true)
  _$$GetCashAndBankDetailsImplCopyWith<_$GetCashAndBankDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTransactionTypeImplCopyWith<$Res> {
  factory _$$SetTransactionTypeImplCopyWith(_$SetTransactionTypeImpl value,
          $Res Function(_$SetTransactionTypeImpl) then) =
      __$$SetTransactionTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOffline});
}

/// @nodoc
class __$$SetTransactionTypeImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$SetTransactionTypeImpl>
    implements _$$SetTransactionTypeImplCopyWith<$Res> {
  __$$SetTransactionTypeImplCopyWithImpl(_$SetTransactionTypeImpl _value,
      $Res Function(_$SetTransactionTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOffline = null,
  }) {
    return _then(_$SetTransactionTypeImpl(
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetTransactionTypeImpl implements SetTransactionType {
  const _$SetTransactionTypeImpl({required this.isOffline});

  @override
  final bool isOffline;

  @override
  String toString() {
    return 'UserDetailsEvent.setTransactionType(isOffline: $isOffline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTransactionTypeImpl &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOffline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTransactionTypeImplCopyWith<_$SetTransactionTypeImpl> get copyWith =>
      __$$SetTransactionTypeImplCopyWithImpl<_$SetTransactionTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String branchId) getAllAccounts,
    required TResult Function(String userId, String branchId)
        getAllTransactions,
    required TResult Function() clearUserDetailsData,
    required TResult Function(num amount) amountChanged,
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return setTransactionType(isOffline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return setTransactionType?.call(isOffline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (setTransactionType != null) {
      return setTransactionType(isOffline);
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return setTransactionType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return setTransactionType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (setTransactionType != null) {
      return setTransactionType(this);
    }
    return orElse();
  }
}

abstract class SetTransactionType implements UserDetailsEvent {
  const factory SetTransactionType({required final bool isOffline}) =
      _$SetTransactionTypeImpl;

  bool get isOffline;
  @JsonKey(ignore: true)
  _$$SetTransactionTypeImplCopyWith<_$SetTransactionTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateAmountImplCopyWith<$Res> {
  factory _$$ValidateAmountImplCopyWith(_$ValidateAmountImpl value,
          $Res Function(_$ValidateAmountImpl) then) =
      __$$ValidateAmountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateAmountImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$ValidateAmountImpl>
    implements _$$ValidateAmountImplCopyWith<$Res> {
  __$$ValidateAmountImplCopyWithImpl(
      _$ValidateAmountImpl _value, $Res Function(_$ValidateAmountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateAmountImpl implements ValidateAmount {
  const _$ValidateAmountImpl();

  @override
  String toString() {
    return 'UserDetailsEvent.validateAmount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateAmountImpl);
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return validateAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return validateAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (validateAmount != null) {
      return validateAmount();
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return validateAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return validateAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (validateAmount != null) {
      return validateAmount(this);
    }
    return orElse();
  }
}

abstract class ValidateAmount implements UserDetailsEvent {
  const factory ValidateAmount() = _$ValidateAmountImpl;
}

/// @nodoc
abstract class _$$ClearSuccessImplCopyWith<$Res> {
  factory _$$ClearSuccessImplCopyWith(
          _$ClearSuccessImpl value, $Res Function(_$ClearSuccessImpl) then) =
      __$$ClearSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSuccessImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$ClearSuccessImpl>
    implements _$$ClearSuccessImplCopyWith<$Res> {
  __$$ClearSuccessImplCopyWithImpl(
      _$ClearSuccessImpl _value, $Res Function(_$ClearSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSuccessImpl implements ClearSuccess {
  const _$ClearSuccessImpl();

  @override
  String toString() {
    return 'UserDetailsEvent.clearSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSuccessImpl);
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
    required TResult Function(String note) noteChanged,
    required TResult Function(UserDetails userDetails) getMonthlyLimit,
    required TResult Function(UserDetails userDetails, String employeeId)
        receveAmount,
    required TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)
        addTransaction,
    required TResult Function(UserDetails userDetails, String employeeId)
        createNewAccount,
    required TResult Function(bool firstTime) firstTimePayment,
    required TResult Function(String branchId) getCashAndBankDetails,
    required TResult Function(bool isOffline) setTransactionType,
    required TResult Function() validateAmount,
    required TResult Function() clearSuccess,
  }) {
    return clearSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String branchId)? getAllAccounts,
    TResult? Function(String userId, String branchId)? getAllTransactions,
    TResult? Function()? clearUserDetailsData,
    TResult? Function(num amount)? amountChanged,
    TResult? Function(String note)? noteChanged,
    TResult? Function(UserDetails userDetails)? getMonthlyLimit,
    TResult? Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult? Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult? Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult? Function(bool firstTime)? firstTimePayment,
    TResult? Function(String branchId)? getCashAndBankDetails,
    TResult? Function(bool isOffline)? setTransactionType,
    TResult? Function()? validateAmount,
    TResult? Function()? clearSuccess,
  }) {
    return clearSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String branchId)? getAllAccounts,
    TResult Function(String userId, String branchId)? getAllTransactions,
    TResult Function()? clearUserDetailsData,
    TResult Function(num amount)? amountChanged,
    TResult Function(String note)? noteChanged,
    TResult Function(UserDetails userDetails)? getMonthlyLimit,
    TResult Function(UserDetails userDetails, String employeeId)? receveAmount,
    TResult Function(UserDetails userDetails,
            DailyCollectionDetails dailyCollectionDetails)?
        addTransaction,
    TResult Function(UserDetails userDetails, String employeeId)?
        createNewAccount,
    TResult Function(bool firstTime)? firstTimePayment,
    TResult Function(String branchId)? getCashAndBankDetails,
    TResult Function(bool isOffline)? setTransactionType,
    TResult Function()? validateAmount,
    TResult Function()? clearSuccess,
    required TResult orElse(),
  }) {
    if (clearSuccess != null) {
      return clearSuccess();
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
    required TResult Function(NoteChanged value) noteChanged,
    required TResult Function(GetMonthlyLimit value) getMonthlyLimit,
    required TResult Function(ReceveAmount value) receveAmount,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(CreateNewAccount value) createNewAccount,
    required TResult Function(FirstTimePayment value) firstTimePayment,
    required TResult Function(GetCashAndBankDetails value)
        getCashAndBankDetails,
    required TResult Function(SetTransactionType value) setTransactionType,
    required TResult Function(ValidateAmount value) validateAmount,
    required TResult Function(ClearSuccess value) clearSuccess,
  }) {
    return clearSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllAccounts value)? getAllAccounts,
    TResult? Function(GetAllTransactions value)? getAllTransactions,
    TResult? Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(NoteChanged value)? noteChanged,
    TResult? Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult? Function(ReceveAmount value)? receveAmount,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(CreateNewAccount value)? createNewAccount,
    TResult? Function(FirstTimePayment value)? firstTimePayment,
    TResult? Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult? Function(SetTransactionType value)? setTransactionType,
    TResult? Function(ValidateAmount value)? validateAmount,
    TResult? Function(ClearSuccess value)? clearSuccess,
  }) {
    return clearSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllAccounts value)? getAllAccounts,
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(ClearUserDetailsData value)? clearUserDetailsData,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(NoteChanged value)? noteChanged,
    TResult Function(GetMonthlyLimit value)? getMonthlyLimit,
    TResult Function(ReceveAmount value)? receveAmount,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(CreateNewAccount value)? createNewAccount,
    TResult Function(FirstTimePayment value)? firstTimePayment,
    TResult Function(GetCashAndBankDetails value)? getCashAndBankDetails,
    TResult Function(SetTransactionType value)? setTransactionType,
    TResult Function(ValidateAmount value)? validateAmount,
    TResult Function(ClearSuccess value)? clearSuccess,
    required TResult orElse(),
  }) {
    if (clearSuccess != null) {
      return clearSuccess(this);
    }
    return orElse();
  }
}

abstract class ClearSuccess implements UserDetailsEvent {
  const factory ClearSuccess() = _$ClearSuccessImpl;
}

/// @nodoc
mixin _$UserDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get transactionType => throw _privateConstructorUsedError;
  bool get firebaseLoading => throw _privateConstructorUsedError;
  bool get firstTime => throw _privateConstructorUsedError;
  bool get noMoredata => throw _privateConstructorUsedError;
  AutovalidateMode get showError => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;
  Option<TransactionDetails> get successOption =>
      throw _privateConstructorUsedError;
  AccountDetail? get account => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  List<TransactionDetails> get transactions =>
      throw _privateConstructorUsedError;
  CashAndBankDetails get cashAndBankDetails =>
      throw _privateConstructorUsedError;
  UserDetails? get userDetails => throw _privateConstructorUsedError;

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
      bool transactionType,
      bool firebaseLoading,
      bool firstTime,
      bool noMoredata,
      AutovalidateMode showError,
      num limit,
      Option<TransactionDetails> successOption,
      AccountDetail? account,
      Amount amount,
      String note,
      List<TransactionDetails> transactions,
      CashAndBankDetails cashAndBankDetails,
      UserDetails? userDetails});
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
    Object? transactionType = null,
    Object? firebaseLoading = null,
    Object? firstTime = null,
    Object? noMoredata = null,
    Object? showError = null,
    Object? limit = null,
    Object? successOption = null,
    Object? account = freezed,
    Object? amount = null,
    Object? note = null,
    Object? transactions = null,
    Object? cashAndBankDetails = null,
    Object? userDetails = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as bool,
      firebaseLoading: null == firebaseLoading
          ? _value.firebaseLoading
          : firebaseLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
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
              as num,
      successOption: null == successOption
          ? _value.successOption
          : successOption // ignore: cast_nullable_to_non_nullable
              as Option<TransactionDetails>,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountDetail?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>,
      cashAndBankDetails: null == cashAndBankDetails
          ? _value.cashAndBankDetails
          : cashAndBankDetails // ignore: cast_nullable_to_non_nullable
              as CashAndBankDetails,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
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
      bool transactionType,
      bool firebaseLoading,
      bool firstTime,
      bool noMoredata,
      AutovalidateMode showError,
      num limit,
      Option<TransactionDetails> successOption,
      AccountDetail? account,
      Amount amount,
      String note,
      List<TransactionDetails> transactions,
      CashAndBankDetails cashAndBankDetails,
      UserDetails? userDetails});
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
    Object? transactionType = null,
    Object? firebaseLoading = null,
    Object? firstTime = null,
    Object? noMoredata = null,
    Object? showError = null,
    Object? limit = null,
    Object? successOption = null,
    Object? account = freezed,
    Object? amount = null,
    Object? note = null,
    Object? transactions = null,
    Object? cashAndBankDetails = null,
    Object? userDetails = freezed,
  }) {
    return _then(_$UserDetailsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as bool,
      firebaseLoading: null == firebaseLoading
          ? _value.firebaseLoading
          : firebaseLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstTime: null == firstTime
          ? _value.firstTime
          : firstTime // ignore: cast_nullable_to_non_nullable
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
              as num,
      successOption: null == successOption
          ? _value.successOption
          : successOption // ignore: cast_nullable_to_non_nullable
              as Option<TransactionDetails>,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountDetail?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetails>,
      cashAndBankDetails: null == cashAndBankDetails
          ? _value.cashAndBankDetails
          : cashAndBankDetails // ignore: cast_nullable_to_non_nullable
              as CashAndBankDetails,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc

class _$UserDetailsStateImpl implements _UserDetailsState {
  const _$UserDetailsStateImpl(
      {required this.isLoading,
      required this.transactionType,
      required this.firebaseLoading,
      required this.firstTime,
      required this.noMoredata,
      required this.showError,
      required this.limit,
      required this.successOption,
      required this.account,
      required this.amount,
      required this.note,
      required final List<TransactionDetails> transactions,
      required this.cashAndBankDetails,
      required this.userDetails})
      : _transactions = transactions;

  @override
  final bool isLoading;
  @override
  final bool transactionType;
  @override
  final bool firebaseLoading;
  @override
  final bool firstTime;
  @override
  final bool noMoredata;
  @override
  final AutovalidateMode showError;
  @override
  final num limit;
  @override
  final Option<TransactionDetails> successOption;
  @override
  final AccountDetail? account;
  @override
  final Amount amount;
  @override
  final String note;
  final List<TransactionDetails> _transactions;
  @override
  List<TransactionDetails> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final CashAndBankDetails cashAndBankDetails;
  @override
  final UserDetails? userDetails;

  @override
  String toString() {
    return 'UserDetailsState(isLoading: $isLoading, transactionType: $transactionType, firebaseLoading: $firebaseLoading, firstTime: $firstTime, noMoredata: $noMoredata, showError: $showError, limit: $limit, successOption: $successOption, account: $account, amount: $amount, note: $note, transactions: $transactions, cashAndBankDetails: $cashAndBankDetails, userDetails: $userDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.firebaseLoading, firebaseLoading) ||
                other.firebaseLoading == firebaseLoading) &&
            (identical(other.firstTime, firstTime) ||
                other.firstTime == firstTime) &&
            (identical(other.noMoredata, noMoredata) ||
                other.noMoredata == noMoredata) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.successOption, successOption) ||
                other.successOption == successOption) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.cashAndBankDetails, cashAndBankDetails) ||
                other.cashAndBankDetails == cashAndBankDetails) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      transactionType,
      firebaseLoading,
      firstTime,
      noMoredata,
      showError,
      limit,
      successOption,
      account,
      amount,
      note,
      const DeepCollectionEquality().hash(_transactions),
      cashAndBankDetails,
      userDetails);

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
      required final bool transactionType,
      required final bool firebaseLoading,
      required final bool firstTime,
      required final bool noMoredata,
      required final AutovalidateMode showError,
      required final num limit,
      required final Option<TransactionDetails> successOption,
      required final AccountDetail? account,
      required final Amount amount,
      required final String note,
      required final List<TransactionDetails> transactions,
      required final CashAndBankDetails cashAndBankDetails,
      required final UserDetails? userDetails}) = _$UserDetailsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get transactionType;
  @override
  bool get firebaseLoading;
  @override
  bool get firstTime;
  @override
  bool get noMoredata;
  @override
  AutovalidateMode get showError;
  @override
  num get limit;
  @override
  Option<TransactionDetails> get successOption;
  @override
  AccountDetail? get account;
  @override
  Amount get amount;
  @override
  String get note;
  @override
  List<TransactionDetails> get transactions;
  @override
  CashAndBankDetails get cashAndBankDetails;
  @override
  UserDetails? get userDetails;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsStateImplCopyWith<_$UserDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
