import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

part 'task_form_state.dart';

class TaskFormCubit extends Cubit<TaskFormState> {
  TaskFormCubit() : super(TaskFormInitial());

  Future<TaskFormState> saveBrainDump(String title, DateTime date) async {
    if (title.isNotEmpty) {
      emit(TaskFormLoading());

      /// UserId should get from local, not from FirebaseAuth
      var userId = FirebaseAuth.instance.currentUser?.uid ?? '0';
      var todayDate = DateTime(date.year, date.month, date.day);
      var taskItem = TaskItem.createRequest(title, todayDate, userId);

      try {
        await FirebaseFirestore.instance
            .collection('task-item')
            .add(taskItem.toJSON());
        emit(TaskFormSuccess());
        return TaskFormSuccess();
      } on FirebaseException catch (e) {
        emit(TaskFormFailure(errorMessage: e.message.toString()));
        return TaskFormFailure(errorMessage: e.message.toString());
      }
    }

    return TaskFormInitial();
  }
}
