import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

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
                  height: 17,
                  width: 52,
                  decoration: BoxDecoration(
                      color:
                          TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: Text('Priority',
                          style: TextStyle(
                            fontSize: 12,
                            color: TimeBoxingColors.neutralWhite(),
                          ))),
                ),
                Container(
                  height: 17,
                  width: 52,
                  decoration: BoxDecoration(
                    color: TimeBoxingColors.neutralWhite(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                      child: Text('Time',
                          style: TextStyle(
                            fontSize: 12,
                            color: TimeBoxingColors.primary40(
                                TimeBoxingColorType.shade),
                          ))),
                ),
                const Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('Juni 23, 2023'),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: Center(
                child: Text('Jordy Task List'),
              ),
            )
          ],
        ));
  }
}
