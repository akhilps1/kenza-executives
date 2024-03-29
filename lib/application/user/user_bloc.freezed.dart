// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SerchTearmChangedImplCopyWith<$Res> {
  factory _$$SerchTearmChangedImplCopyWith(_$SerchTearmChangedImpl value,
          $Res Function(_$SerchTearmChangedImpl) then) =
      __$$SerchTearmChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SerchTearmChangedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SerchTearmChangedImpl>
    implements _$$SerchTearmChangedImplCopyWith<$Res> {
  __$$SerchTearmChangedImplCopyWithImpl(_$SerchTearmChangedImpl _value,
      $Res Function(_$SerchTearmChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SerchTearmChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SerchTearmChangedImpl implements SerchTearmChanged {
  const _$SerchTearmChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'UserEvent.serchTearmChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerchTearmChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SerchTearmChangedImplCopyWith<_$SerchTearmChangedImpl> get copyWith =>
      __$$SerchTearmChangedImplCopyWithImpl<_$SerchTearmChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return serchTearmChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return serchTearmChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (serchTearmChanged != null) {
      return serchTearmChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return serchTearmChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return serchTearmChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (serchTearmChanged != null) {
      return serchTearmChanged(this);
    }
    return orElse();
  }
}

abstract class SerchTearmChanged implements UserEvent {
  const factory SerchTearmChanged(final String value) = _$SerchTearmChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SerchTearmChangedImplCopyWith<_$SerchTearmChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchClickedImplCopyWith<$Res> {
  factory _$$SearchClickedImplCopyWith(
          _$SearchClickedImpl value, $Res Function(_$SearchClickedImpl) then) =
      __$$SearchClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String branchId});
}

/// @nodoc
class __$$SearchClickedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchClickedImpl>
    implements _$$SearchClickedImplCopyWith<$Res> {
  __$$SearchClickedImplCopyWithImpl(
      _$SearchClickedImpl _value, $Res Function(_$SearchClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
  }) {
    return _then(_$SearchClickedImpl(
      null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchClickedImpl implements SearchClicked {
  const _$SearchClickedImpl(this.branchId);

  @override
  final String branchId;

  @override
  String toString() {
    return 'UserEvent.searchClicked(branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchClickedImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchClickedImplCopyWith<_$SearchClickedImpl> get copyWith =>
      __$$SearchClickedImplCopyWithImpl<_$SearchClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return searchClicked(branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return searchClicked?.call(branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (searchClicked != null) {
      return searchClicked(branchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return searchClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return searchClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (searchClicked != null) {
      return searchClicked(this);
    }
    return orElse();
  }
}

abstract class SearchClicked implements UserEvent {
  const factory SearchClicked(final String branchId) = _$SearchClickedImpl;

  String get branchId;
  @JsonKey(ignore: true)
  _$$SearchClickedImplCopyWith<_$SearchClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchClosedImplCopyWith<$Res> {
  factory _$$SearchClosedImplCopyWith(
          _$SearchClosedImpl value, $Res Function(_$SearchClosedImpl) then) =
      __$$SearchClosedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchClosedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchClosedImpl>
    implements _$$SearchClosedImplCopyWith<$Res> {
  __$$SearchClosedImplCopyWithImpl(
      _$SearchClosedImpl _value, $Res Function(_$SearchClosedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchClosedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchClosedImpl implements SearchClosed {
  const _$SearchClosedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'UserEvent.searchClosed(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchClosedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchClosedImplCopyWith<_$SearchClosedImpl> get copyWith =>
      __$$SearchClosedImplCopyWithImpl<_$SearchClosedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return searchClosed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return searchClosed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (searchClosed != null) {
      return searchClosed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return searchClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return searchClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (searchClosed != null) {
      return searchClosed(this);
    }
    return orElse();
  }
}

abstract class SearchClosed implements UserEvent {
  const factory SearchClosed(final String value) = _$SearchClosedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SearchClosedImplCopyWith<_$SearchClosedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllusersImplCopyWith<$Res> {
  factory _$$GetAllusersImplCopyWith(
          _$GetAllusersImpl value, $Res Function(_$GetAllusersImpl) then) =
      __$$GetAllusersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String branchId});
}

/// @nodoc
class __$$GetAllusersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetAllusersImpl>
    implements _$$GetAllusersImplCopyWith<$Res> {
  __$$GetAllusersImplCopyWithImpl(
      _$GetAllusersImpl _value, $Res Function(_$GetAllusersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
  }) {
    return _then(_$GetAllusersImpl(
      null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllusersImpl implements GetAllusers {
  const _$GetAllusersImpl(this.branchId);

  @override
  final String branchId;

  @override
  String toString() {
    return 'UserEvent.getAllusers(branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllusersImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllusersImplCopyWith<_$GetAllusersImpl> get copyWith =>
      __$$GetAllusersImplCopyWithImpl<_$GetAllusersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return getAllusers(branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return getAllusers?.call(branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (getAllusers != null) {
      return getAllusers(branchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return getAllusers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return getAllusers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (getAllusers != null) {
      return getAllusers(this);
    }
    return orElse();
  }
}

abstract class GetAllusers implements UserEvent {
  const factory GetAllusers(final String branchId) = _$GetAllusersImpl;

  String get branchId;
  @JsonKey(ignore: true)
  _$$GetAllusersImplCopyWith<_$GetAllusersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearUserDataImplCopyWith<$Res> {
  factory _$$ClearUserDataImplCopyWith(
          _$ClearUserDataImpl value, $Res Function(_$ClearUserDataImpl) then) =
      __$$ClearUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUserDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ClearUserDataImpl>
    implements _$$ClearUserDataImplCopyWith<$Res> {
  __$$ClearUserDataImplCopyWithImpl(
      _$ClearUserDataImpl _value, $Res Function(_$ClearUserDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearUserDataImpl implements ClearUserData {
  const _$ClearUserDataImpl();

  @override
  String toString() {
    return 'UserEvent.clearUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return clearUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return clearUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (clearUserData != null) {
      return clearUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return clearUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return clearUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (clearUserData != null) {
      return clearUserData(this);
    }
    return orElse();
  }
}

abstract class ClearUserData implements UserEvent {
  const factory ClearUserData() = _$ClearUserDataImpl;
}

/// @nodoc
abstract class _$$ClearUserFailureImplCopyWith<$Res> {
  factory _$$ClearUserFailureImplCopyWith(_$ClearUserFailureImpl value,
          $Res Function(_$ClearUserFailureImpl) then) =
      __$$ClearUserFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUserFailureImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ClearUserFailureImpl>
    implements _$$ClearUserFailureImplCopyWith<$Res> {
  __$$ClearUserFailureImplCopyWithImpl(_$ClearUserFailureImpl _value,
      $Res Function(_$ClearUserFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearUserFailureImpl implements ClearUserFailure {
  const _$ClearUserFailureImpl();

  @override
  String toString() {
    return 'UserEvent.clearUserFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearUserFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return clearUserFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return clearUserFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (clearUserFailure != null) {
      return clearUserFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return clearUserFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return clearUserFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (clearUserFailure != null) {
      return clearUserFailure(this);
    }
    return orElse();
  }
}

abstract class ClearUserFailure implements UserEvent {
  const factory ClearUserFailure() = _$ClearUserFailureImpl;
}

/// @nodoc
abstract class _$$GetEmployeeDailyCollectionImplCopyWith<$Res> {
  factory _$$GetEmployeeDailyCollectionImplCopyWith(
          _$GetEmployeeDailyCollectionImpl value,
          $Res Function(_$GetEmployeeDailyCollectionImpl) then) =
      __$$GetEmployeeDailyCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String employeeId});
}

/// @nodoc
class __$$GetEmployeeDailyCollectionImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetEmployeeDailyCollectionImpl>
    implements _$$GetEmployeeDailyCollectionImplCopyWith<$Res> {
  __$$GetEmployeeDailyCollectionImplCopyWithImpl(
      _$GetEmployeeDailyCollectionImpl _value,
      $Res Function(_$GetEmployeeDailyCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$GetEmployeeDailyCollectionImpl(
      null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEmployeeDailyCollectionImpl implements GetEmployeeDailyCollection {
  const _$GetEmployeeDailyCollectionImpl(this.employeeId);

  @override
  final String employeeId;

  @override
  String toString() {
    return 'UserEvent.getEmployeeDailyCollection(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmployeeDailyCollectionImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmployeeDailyCollectionImplCopyWith<_$GetEmployeeDailyCollectionImpl>
      get copyWith => __$$GetEmployeeDailyCollectionImplCopyWithImpl<
          _$GetEmployeeDailyCollectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return getEmployeeDailyCollection(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return getEmployeeDailyCollection?.call(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (getEmployeeDailyCollection != null) {
      return getEmployeeDailyCollection(employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return getEmployeeDailyCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return getEmployeeDailyCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (getEmployeeDailyCollection != null) {
      return getEmployeeDailyCollection(this);
    }
    return orElse();
  }
}

abstract class GetEmployeeDailyCollection implements UserEvent {
  const factory GetEmployeeDailyCollection(final String employeeId) =
      _$GetEmployeeDailyCollectionImpl;

  String get employeeId;
  @JsonKey(ignore: true)
  _$$GetEmployeeDailyCollectionImplCopyWith<_$GetEmployeeDailyCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBranchDailyCollectionImplCopyWith<$Res> {
  factory _$$GetBranchDailyCollectionImplCopyWith(
          _$GetBranchDailyCollectionImpl value,
          $Res Function(_$GetBranchDailyCollectionImpl) then) =
      __$$GetBranchDailyCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String branchId});
}

/// @nodoc
class __$$GetBranchDailyCollectionImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetBranchDailyCollectionImpl>
    implements _$$GetBranchDailyCollectionImplCopyWith<$Res> {
  __$$GetBranchDailyCollectionImplCopyWithImpl(
      _$GetBranchDailyCollectionImpl _value,
      $Res Function(_$GetBranchDailyCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = null,
  }) {
    return _then(_$GetBranchDailyCollectionImpl(
      null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBranchDailyCollectionImpl implements GetBranchDailyCollection {
  const _$GetBranchDailyCollectionImpl(this.branchId);

  @override
  final String branchId;

  @override
  String toString() {
    return 'UserEvent.getBranchDailyCollection(branchId: $branchId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBranchDailyCollectionImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBranchDailyCollectionImplCopyWith<_$GetBranchDailyCollectionImpl>
      get copyWith => __$$GetBranchDailyCollectionImplCopyWithImpl<
          _$GetBranchDailyCollectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) serchTearmChanged,
    required TResult Function(String branchId) searchClicked,
    required TResult Function(String value) searchClosed,
    required TResult Function(String branchId) getAllusers,
    required TResult Function() clearUserData,
    required TResult Function() clearUserFailure,
    required TResult Function(String employeeId) getEmployeeDailyCollection,
    required TResult Function(String branchId) getBranchDailyCollection,
  }) {
    return getBranchDailyCollection(branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? serchTearmChanged,
    TResult? Function(String branchId)? searchClicked,
    TResult? Function(String value)? searchClosed,
    TResult? Function(String branchId)? getAllusers,
    TResult? Function()? clearUserData,
    TResult? Function()? clearUserFailure,
    TResult? Function(String employeeId)? getEmployeeDailyCollection,
    TResult? Function(String branchId)? getBranchDailyCollection,
  }) {
    return getBranchDailyCollection?.call(branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? serchTearmChanged,
    TResult Function(String branchId)? searchClicked,
    TResult Function(String value)? searchClosed,
    TResult Function(String branchId)? getAllusers,
    TResult Function()? clearUserData,
    TResult Function()? clearUserFailure,
    TResult Function(String employeeId)? getEmployeeDailyCollection,
    TResult Function(String branchId)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (getBranchDailyCollection != null) {
      return getBranchDailyCollection(branchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SerchTearmChanged value) serchTearmChanged,
    required TResult Function(SearchClicked value) searchClicked,
    required TResult Function(SearchClosed value) searchClosed,
    required TResult Function(GetAllusers value) getAllusers,
    required TResult Function(ClearUserData value) clearUserData,
    required TResult Function(ClearUserFailure value) clearUserFailure,
    required TResult Function(GetEmployeeDailyCollection value)
        getEmployeeDailyCollection,
    required TResult Function(GetBranchDailyCollection value)
        getBranchDailyCollection,
  }) {
    return getBranchDailyCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SerchTearmChanged value)? serchTearmChanged,
    TResult? Function(SearchClicked value)? searchClicked,
    TResult? Function(SearchClosed value)? searchClosed,
    TResult? Function(GetAllusers value)? getAllusers,
    TResult? Function(ClearUserData value)? clearUserData,
    TResult? Function(ClearUserFailure value)? clearUserFailure,
    TResult? Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult? Function(GetBranchDailyCollection value)? getBranchDailyCollection,
  }) {
    return getBranchDailyCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerchTearmChanged value)? serchTearmChanged,
    TResult Function(SearchClicked value)? searchClicked,
    TResult Function(SearchClosed value)? searchClosed,
    TResult Function(GetAllusers value)? getAllusers,
    TResult Function(ClearUserData value)? clearUserData,
    TResult Function(ClearUserFailure value)? clearUserFailure,
    TResult Function(GetEmployeeDailyCollection value)?
        getEmployeeDailyCollection,
    TResult Function(GetBranchDailyCollection value)? getBranchDailyCollection,
    required TResult orElse(),
  }) {
    if (getBranchDailyCollection != null) {
      return getBranchDailyCollection(this);
    }
    return orElse();
  }
}

abstract class GetBranchDailyCollection implements UserEvent {
  const factory GetBranchDailyCollection(final String branchId) =
      _$GetBranchDailyCollectionImpl;

  String get branchId;
  @JsonKey(ignore: true)
  _$$GetBranchDailyCollectionImplCopyWith<_$GetBranchDailyCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get noMoreData => throw _privateConstructorUsedError;
  Option<UserDetails> get failureOption => throw _privateConstructorUsedError;
  List<UserDetails> get users => throw _privateConstructorUsedError;
  SearchTeram get searchTeram => throw _privateConstructorUsedError;
  DailyCollection? get dailyCollection => throw _privateConstructorUsedError;
  DailyCollection? get branchdailyCollection =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool noMoreData,
      Option<UserDetails> failureOption,
      List<UserDetails> users,
      SearchTeram searchTeram,
      DailyCollection? dailyCollection,
      DailyCollection? branchdailyCollection});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? noMoreData = null,
    Object? failureOption = null,
    Object? users = null,
    Object? searchTeram = null,
    Object? dailyCollection = freezed,
    Object? branchdailyCollection = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreData: null == noMoreData
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<UserDetails>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDetails>,
      searchTeram: null == searchTeram
          ? _value.searchTeram
          : searchTeram // ignore: cast_nullable_to_non_nullable
              as SearchTeram,
      dailyCollection: freezed == dailyCollection
          ? _value.dailyCollection
          : dailyCollection // ignore: cast_nullable_to_non_nullable
              as DailyCollection?,
      branchdailyCollection: freezed == branchdailyCollection
          ? _value.branchdailyCollection
          : branchdailyCollection // ignore: cast_nullable_to_non_nullable
              as DailyCollection?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool noMoreData,
      Option<UserDetails> failureOption,
      List<UserDetails> users,
      SearchTeram searchTeram,
      DailyCollection? dailyCollection,
      DailyCollection? branchdailyCollection});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? noMoreData = null,
    Object? failureOption = null,
    Object? users = null,
    Object? searchTeram = null,
    Object? dailyCollection = freezed,
    Object? branchdailyCollection = freezed,
  }) {
    return _then(_$UserStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreData: null == noMoreData
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<UserDetails>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserDetails>,
      searchTeram: null == searchTeram
          ? _value.searchTeram
          : searchTeram // ignore: cast_nullable_to_non_nullable
              as SearchTeram,
      dailyCollection: freezed == dailyCollection
          ? _value.dailyCollection
          : dailyCollection // ignore: cast_nullable_to_non_nullable
              as DailyCollection?,
      branchdailyCollection: freezed == branchdailyCollection
          ? _value.branchdailyCollection
          : branchdailyCollection // ignore: cast_nullable_to_non_nullable
              as DailyCollection?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.isLoading,
      required this.noMoreData,
      required this.failureOption,
      required final List<UserDetails> users,
      required this.searchTeram,
      required this.dailyCollection,
      required this.branchdailyCollection})
      : _users = users;

  @override
  final bool isLoading;
  @override
  final bool noMoreData;
  @override
  final Option<UserDetails> failureOption;
  final List<UserDetails> _users;
  @override
  List<UserDetails> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final SearchTeram searchTeram;
  @override
  final DailyCollection? dailyCollection;
  @override
  final DailyCollection? branchdailyCollection;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, noMoreData: $noMoreData, failureOption: $failureOption, users: $users, searchTeram: $searchTeram, dailyCollection: $dailyCollection, branchdailyCollection: $branchdailyCollection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.noMoreData, noMoreData) ||
                other.noMoreData == noMoreData) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.searchTeram, searchTeram) ||
                other.searchTeram == searchTeram) &&
            (identical(other.dailyCollection, dailyCollection) ||
                other.dailyCollection == dailyCollection) &&
            (identical(other.branchdailyCollection, branchdailyCollection) ||
                other.branchdailyCollection == branchdailyCollection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      noMoreData,
      failureOption,
      const DeepCollectionEquality().hash(_users),
      searchTeram,
      dailyCollection,
      branchdailyCollection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final bool isLoading,
      required final bool noMoreData,
      required final Option<UserDetails> failureOption,
      required final List<UserDetails> users,
      required final SearchTeram searchTeram,
      required final DailyCollection? dailyCollection,
      required final DailyCollection? branchdailyCollection}) = _$UserStateImpl;

  @override
  bool get isLoading;
  @override
  bool get noMoreData;
  @override
  Option<UserDetails> get failureOption;
  @override
  List<UserDetails> get users;
  @override
  SearchTeram get searchTeram;
  @override
  DailyCollection? get dailyCollection;
  @override
  DailyCollection? get branchdailyCollection;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
