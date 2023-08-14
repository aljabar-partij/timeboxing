import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Component/task_list.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TimeboxingTodayTask extends StatefulWidget {
  const TimeboxingTodayTask({super.key});

  @override
  State<TimeboxingTodayTask> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TimeboxingTodayTask> {
  /// Dummy Properties
  final List<TaskItem> taskItems = [
    TaskItem(
      id: '1',
      name: 'Ngocok bareng',
      description: 'Pake duren',
      time: '08:00',
      date: '1 June',
      taskPriority: TaskPriority(
        id: '1',
        type: TaskPriorityType.p0,
      ),
    ),
    TaskItem(
      id: '1',
      name: 'Ngocok bareng',
      description: 'Pake duren',
      time: '08:00',
      date: '1 June',
      taskPriority: TaskPriority(
        id: '1',
        type: TaskPriorityType.p0,
      ),
    ),
    TaskItem(
      id: '1',
      name: 'Ngocok bareng',
      description: 'Pake duren',
      time: '08:00',
      date: '1 June',
      taskPriority: TaskPriority(
        id: '1',
        type: TaskPriorityType.p0,
      ),
    ),
    TaskItem(
      id: '1',
      name: 'Nopal mimik obat',
      description: 'Pake duren',
      time: '08:00',
      date: '1 June',
      taskPriority: TaskPriority(
        id: '3',
        type: TaskPriorityType.p2,
      ),
    ),
    TaskItem(
      id: '1',
      name: 'Nopal mimik obat',
      description: 'Pake duren',
      time: '08:00',
      date: '1 June',
      taskPriority: TaskPriority(
        id: '2',
        type: TaskPriorityType.p1,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
                const SizedBox(
                  width: 4,
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
            TaskList(taskItems: taskItems)
          ],
        ));
  }
}
