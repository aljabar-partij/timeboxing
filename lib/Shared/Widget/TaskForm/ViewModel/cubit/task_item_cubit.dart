import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

part 'task_item_state.dart';

class TaskItemCubit extends Cubit<TaskItemState> {
  TaskItemCubit() : super(TaskItemLoaded(taskItems: const [])) {
    getTask(DateTime.now());
  }

  void getTask(DateTime date) {
    emit(TaskItemLoading());
    try {
      var selectedDate = DateTime(date.year, date.month, date.day);
      var userId = FirebaseAuth.instance.currentUser?.uid ?? "";
      FirebaseFirestore.instance
          .collection('task-item')
          .where("userId", isEqualTo: userId)
          .where("date", isEqualTo: selectedDate)
          .get()
          .then((snapshot) {
        var taskItems = snapshot.docs
            .map((docs) => TaskItem.fromJSON(docs.data(), docs.id))
            .toList();
        emit(TaskItemLoaded(taskItems: taskItems));
      });
    } on FirebaseException catch (error) {
      emit(TaskItemFailure(errorMessage: error.message ?? 'Try again...'));
    }
  }

  void deleteTask(TaskItem taskItem) async {
    final currentState = state as TaskItemLoaded;

    emit(TaskItemLoading());
    try {
      await FirebaseFirestore.instance
          .collection('task-item')
          .doc(taskItem.id)
          .delete();
      currentState.taskItems.remove(taskItem);
      emit(TaskItemLoaded(taskItems: currentState.taskItems));
    } on FirebaseException catch (error) {
      emit(TaskItemFailure(errorMessage: error.message ?? 'Try again...'));
    }
  }
}
