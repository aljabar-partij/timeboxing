import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_empty_priority_component.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_priority_list_component.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_item_cubit.dart';

class CreationListComponent extends StatelessWidget {
  const CreationListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
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
        child: BlocBuilder<TaskItemCubit, TaskItemState>(
          builder: (context, state) {
            if (state is TaskItemLoaded) {
              final taskItemsWithPriority = state.taskItems
                  .where((taskItem) => taskItem.taskPriority != null)
                  .toList();
              if (taskItemsWithPriority.isNotEmpty) {
                return CreationPriorityListComponent(
                    taskItems: taskItemsWithPriority);
              } else {
                return const CreationEmptyPriorityComponent();
              }
            }

            if (state is TaskItemLoading) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CreationPriorityListShimmer(),
              );
            }
            return Container();
          },
        ));
  }
}

class CreationPriorityListShimmer extends StatelessWidget {
  const CreationPriorityListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 56,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: TimeBoxingColors.text90(TimeBoxingColorType.tint)),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            height: 32,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: TimeBoxingColors.text90(TimeBoxingColorType.tint)),
          ),
        ),
      ],
    );
  }
}