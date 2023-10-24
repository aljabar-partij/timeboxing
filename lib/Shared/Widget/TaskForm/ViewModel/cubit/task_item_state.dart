part of 'task_item_cubit.dart';

sealed class TaskItemState extends Equatable {
  const TaskItemState();

  @override
  List<Object> get props => [];
}

final class TaskItemLoaded extends TaskItemState {
  List<TaskItem> taskItems;
  TaskItemLoaded({required this.taskItems});
}

final class TaskItemLoading extends TaskItemState {}

final class TaskItemFailure extends TaskItemState {
  final String errorMessage;
  const TaskItemFailure({required this.errorMessage});
}
