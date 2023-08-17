import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_empty_priority_component.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_priority_list_component.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class CreationListComponent extends StatefulWidget {
  const CreationListComponent({super.key});

  @override
  State<CreationListComponent> createState() => _CreationListComponentState();
}

class _CreationListComponentState extends State<CreationListComponent> {
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

  Widget makeWidgetBasedOnPriorityCount(List<TaskItem> taskItems) {
    if (taskItems.isNotEmpty) {
      return CreationPriorityListComponent(taskItems: taskItems);
    } else {
      return const CreationEmptyPriorityComponent();
    }
  }

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
        child: makeWidgetBasedOnPriorityCount(_taskItems));
  }
}
