part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.serchTearmChanged(String value) = SerchTearmChanged;
  const factory UserEvent.searchClicked(String branchId) = SearchClicked;
  const factory UserEvent.searchClosed(String value) = SearchClosed;
  const factory UserEvent.getAllusers(String branchId) = GetAllusers;
  const factory UserEvent.clearUserData() = ClearUserData;
  const factory UserEvent.clearUserFailure() = ClearUserFailure;
  const factory UserEvent.getEmployeeDailyCollection(String employeeId) =
      GetEmployeeDailyCollection;
  const factory UserEvent.getBranchDailyCollection(String branchId) =
      GetBranchDailyCollection;
}
