part of 'get_emloyee_details_cubit.dart';

@freezed
class GetEmloyeeDetailsState with _$GetEmloyeeDetailsState {
  const factory GetEmloyeeDetailsState({
    required Executive? executive,
  }) = _GetEmloyeeDetailsState;

  factory GetEmloyeeDetailsState.initial() =>
      const GetEmloyeeDetailsState(executive: null);
}
