part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required bool noMoreData,
    required Option<UserDetails> failureOption,
    required List<UserDetails> users,
    required SearchTeram searchTeram,
    required DailyCollection? dailyCollection,
    required DailyCollection? branchdailyCollection,
  }) = _UserState;

  factory UserState.initial() => UserState(
        isLoading: false,
        failureOption: none(),
        users: [],
        dailyCollection: null,
        branchdailyCollection: null,
        noMoreData: false,
        searchTeram: SearchTeram(''),
      );
}
