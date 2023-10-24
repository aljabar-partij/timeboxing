import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_item_cubit.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key, required this.taskItem, this.didTap});
  final TaskItem taskItem;
  final void Function()? didTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.read<TaskItemCubit>().deleteTask(taskItem);
            },
            child: SvgPicture.asset(
              'icon/remove-circle-outline.svg',
              width: 20,
              height: 20,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: GestureDetector(
              onTap: didTap,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          taskItem.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: TimeBoxingColors.primary50(
                                  TimeBoxingColorType.shade),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 10,
                              color: TimeBoxingColors.neutralWhite(),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Add\nPriority',
                            textAlign: TextAlign.center,
                            style: TimeBoxingTextStyle.paragraph5(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 0.8,
                    color: TimeBoxingColors.text80(TimeBoxingColorType.tint),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItemShimmerWidget extends StatelessWidget {
  const TaskItemShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: TimeBoxingColors.text90(TimeBoxingColorType.tint),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: TimeBoxingColors.text90(TimeBoxingColorType.tint),
          ),
        ),
      ],
    );
  }
}
