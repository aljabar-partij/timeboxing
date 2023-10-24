import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_task_priority_bottomsheet.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/ViewModel/PrioritySettingReducer/priority_setting_cubit.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/Component/task_form_component.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/Component/task_item_component.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_item_cubit.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/ViewModel/weekly_date_picker_cubit.dart';

class CreationBrainDumpComponent extends StatelessWidget {
  const CreationBrainDumpComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          TaskFormWidget(),
          BlocBuilder<TaskItemCubit, TaskItemState>(builder: (context, state) {
            if (state is TaskItemLoaded) {
              final brainDumpTaskItem = state.taskItems
                  .where((taskItem) => taskItem.taskPriority == null);
              return Column(
                children: brainDumpTaskItem
                    .map((taskItem) => TaskItemWidget(
                          taskItem: taskItem,
                          didTap: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(32.0),
                                ),
                              ),
                              context: context,
                              builder: (_) {
                                return BlocProvider(
                                  create: (_) =>
                                      PrioritySettingCubit(taskItem: taskItem),
                                  child: CreationTaskPriorityBottomsheet(
                                    taskItem: taskItem,
                                    title: 'Add Priority',
                                    didSuccessSave: () {
                                      final currentDate = context
                                          .read<WeeklyDatePickerCubit>()
                                          .state
                                          .selectedDate;
                                      context
                                          .read<TaskItemCubit>()
                                          .getTask(currentDate);
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ))
                    .toList(),
              );
            } else if (state is TaskItemFailure) {
              return Container();
            } else if (state is TaskItemLoading) {
              return const TaskItemShimmerWidget();
            }
            return Container();
          }),
        ],
      ),
    );
  }
}
