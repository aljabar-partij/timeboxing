import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_list_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TodayTask/Component/empty_task_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TodayTask/Component/today_task_component.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_item_cubit.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TimeboxingTodayTask extends StatelessWidget {
  TimeboxingTodayTask({super.key});
  final currentDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  final userId = FirebaseAuth.instance.currentUser?.uid ?? "";

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        decoration: BoxDecoration(
          color: TimeBoxingColors.neutralWhite(),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: TimeBoxingColors.neutralBlack().withOpacity(0.08),
              blurRadius: 8,
            ),
          ],
        ),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('task-item')
              .where("userId", isEqualTo: userId)
              .where("date", isEqualTo: currentDate)
              .snapshots(),
          builder: (context, snapshot) {
            final docs = snapshot.data?.docs;
            if (docs != null) {
              var taskItems = docs
                  .map((docs) => TaskItem.fromJSON(docs.data(), docs.id))
                  .toList();
              final taskItemsWithPriority = taskItems
                  .where((taskItem) => taskItem.taskPriority != null)
                  .toList();
              if (taskItems.isNotEmpty) {
                return TodayTaskComponent(taskItems: taskItemsWithPriority);
              }
              return const EmptyTaskComponent();
            }

            return const EmptyTaskComponent();
          },
        )
        //  BlocBuilder<TaskItemCubit, TaskItemState>(
        //   builder: (context, state) {
        //     if (state is TaskItemLoaded) {
        //       final taskItemsWithPriority = state.taskItems
        //             .where((taskItem) => taskItem.taskPriority != null)
        //             .toList();

        //       if (state.taskItems.isNotEmpty) {
        //         return TodayTaskComponent(taskItems: taskItemsWithPriority);
        //       }
        //       return const EmptyTaskComponent();
        //     }

        //     if (state is TaskItemLoading) {
        //       return const CreationPriorityListShimmer();
        //     }

        //     return Container();
        //   },
        // ),
        );
  }
}
