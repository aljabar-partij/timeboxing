part of 'priority_setting_cubit.dart';

class PrioritySettingState {
  final TaskItem taskItem;
  String? errorMessage;
  bool isLoading = false;
  PrioritySettingState(
      {required this.taskItem, this.errorMessage, bool? isLoading,}) {
    this.isLoading = isLoading ?? false;
  }

  factory PrioritySettingState.copyWith(TaskItem taskItem) {
    return PrioritySettingState(taskItem: taskItem);
  }
}
