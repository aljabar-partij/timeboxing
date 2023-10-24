import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Component/task_list.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TodayTaskComponent extends StatelessWidget {
  const TodayTaskComponent({super.key, required this.taskItems});
  final List<TaskItem> taskItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              decoration: BoxDecoration(
                  color: TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                  borderRadius: BorderRadius.circular(4)),
              child: Text('Priority',
                  style: TimeBoxingTextStyle.paragraph4(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.neutralWhite(),
                  )),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              decoration: BoxDecoration(
                color: TimeBoxingColors.neutralWhite(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text('Time',
                  style: TimeBoxingTextStyle.paragraph4(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                  )),
            ),
            const Spacer(),
            Text('June 23, 2023',
                style: TimeBoxingTextStyle.paragraph4(
                  TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text20(TimeBoxingColorType.shade),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text('Task List',
                style: TimeBoxingTextStyle.headline4(
                  TimeBoxingFontWeight.bold,
                  TimeBoxingColors.text90(TimeBoxingColorType.shade),
                )),
          ),
        ),
        TaskList(taskItems: taskItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Go to TimeBox Creation',
                style: TimeBoxingTextStyle.paragraph3(
                  TimeBoxingFontWeight.regular,
                  TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                )),
            const SizedBox(
              width: 8,
            ),
            Icon(
              Icons.play_arrow,
              size: 12,
              color: TimeBoxingColors.primary40(TimeBoxingColorType.shade),
            )
          ],
        )
      ],
    );
  }
}
