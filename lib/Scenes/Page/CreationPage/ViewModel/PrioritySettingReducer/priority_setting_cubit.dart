import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Model/user_model.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

part 'priority_setting_state.dart';

class PrioritySettingCubit extends Cubit<PrioritySettingState> {
  PrioritySettingCubit({required TaskItem taskItem})
      : super(PrioritySettingState(taskItem: taskItem));

  void saveTime(DateTime startTime, DateTime endTime) {
    var taskItem = state.taskItem;
    taskItem.startTime = startTime;
    taskItem.endTime = endTime;
    emit(PrioritySettingState(taskItem: taskItem));
  }

  void savePriority(TaskPriority taskPriority) {
    var taskItem = state.taskItem;
    taskItem.taskPriority = taskPriority;
    emit(PrioritySettingState(taskItem: taskItem));
  }

  void saveAssignee(List<User> selectedUsers) {
    var taskItem = state.taskItem;
    taskItem.assignees = selectedUsers;
    emit(PrioritySettingState(taskItem: taskItem));
  }

  void saveTitleAndNotes({String? title, String? notes}) {
    var taskItem = state.taskItem;

    if (title != null) taskItem.title = title;
    if (notes != null) taskItem.description = notes;

    emit(PrioritySettingState(taskItem: taskItem));
  }

  Future<bool> saveTaskItem() async {
    var taskItem = state.taskItem;
    final hasPriority = taskItem.taskPriority != null;
    final hasTime = taskItem.startTime != null && taskItem.endTime != null;
    final hasTitle = taskItem.title.isNotEmpty;

    if (!hasPriority && !hasTime) {
      const errorMessage = 'You should pick the time & priority first!';
      emit(
          PrioritySettingState(taskItem: taskItem, errorMessage: errorMessage));
    } else if (!hasTime) {
      const errorMessage = 'You should pick the time first!';
      emit(
          PrioritySettingState(taskItem: taskItem, errorMessage: errorMessage));
    } else if (!hasPriority) {
      const errorMessage = 'You should pick the priority first!';
      emit(
          PrioritySettingState(taskItem: taskItem, errorMessage: errorMessage));
    } else if (!hasTitle) {
      const errorMessage = 'You should write the title first!';
      emit(
          PrioritySettingState(taskItem: taskItem, errorMessage: errorMessage));
    } else {
      emit(PrioritySettingState(taskItem: taskItem, isLoading: true));
      try {
        await FirebaseFirestore.instance
            .collection('task-item')
            .doc(taskItem.id)
            .update(taskItem.toJSON())
            .then((snapshot) {
          emit(PrioritySettingState(taskItem: taskItem, isLoading: false));
        });
        return true;
      } on FirebaseException catch (error) {
        emit(PrioritySettingState(
            taskItem: taskItem, errorMessage: error.message ?? 'Try again...'));
      }
    }

    return false;
  }
}
