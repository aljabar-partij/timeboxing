import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TodayTask/Component/empty_task_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TodayTask/Component/today_task_component.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TimeboxingTodayTask extends StatefulWidget {
  const TimeboxingTodayTask({super.key});

  @override
  State<TimeboxingTodayTask> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TimeboxingTodayTask> {
  /// Dummy Properties
  final List<TaskItem> _taskItems = [
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

  Widget _generateLayoutBasedOnTaskItemCount(List<TaskItem> taskItems) {
    if (taskItems.isNotEmpty) {
      return TodayTaskComponent(taskItems: taskItems);
    }
    return const EmptyTaskComponent();
  }

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
      child: _generateLayoutBasedOnTaskItemCount(_taskItems),
    );
  }
}
