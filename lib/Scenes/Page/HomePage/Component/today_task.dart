import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Component/task_list.dart';

class TimeboxingTodayTask extends StatefulWidget {
  const TimeboxingTodayTask({super.key});

  @override
  State<TimeboxingTodayTask> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TimeboxingTodayTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
        decoration: BoxDecoration(
          color: TimeBoxingColors.neutralWhite(),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  decoration: BoxDecoration(
                      color:
                          TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text('Priority',
                      style: TimeBoxingTextStyle.paragraph4(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite(),
                      )),
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
                child: Text('Jordys Task List',
                    style: TimeBoxingTextStyle.headline4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text90(TimeBoxingColorType.shade),
                    )),
              ),
            ),
            const TaskList(),
          ],
        ));
  }
}
