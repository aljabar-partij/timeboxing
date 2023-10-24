part of 'task_form_cubit.dart';

sealed class TaskFormState extends Equatable {
  const TaskFormState();

  @override
  List<Object> get props => [];
}

final class TaskFormInitial extends TaskFormState {}

final class TaskFormLoading extends TaskFormState {}

final class TaskFormSuccess extends TaskFormState {}

final class TaskFormFailure extends TaskFormState {
  final String errorMessage;
  const TaskFormFailure({required this.errorMessage});
}
