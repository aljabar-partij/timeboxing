part of 'search_assignee_cubit.dart';

sealed class SearchAssigneeState {
  const SearchAssigneeState();
}

final class SearchAssigneeLoading extends SearchAssigneeState {}

final class SearchAssigneeLoaded extends SearchAssigneeState {
  final List<User> users;
  List<User> selectedUsers = [];
  SearchAssigneeLoaded({required this.users, List<User>? selectedUsers}) {
    this.selectedUsers = selectedUsers ?? [];
  }
}

final class SearchAssigneeError extends SearchAssigneeState {
  final String errorMessage;
  const SearchAssigneeError({required this.errorMessage});
}
