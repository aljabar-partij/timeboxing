import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key, required this.taskItems});
  final List<TaskItem> taskItems;

  @override
  State<TaskList> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TaskList> {
  List<TodayTask> todayTasks = [];

  List<TodayTask> _generateTodayTask(List<TaskItem> taskItems) {
    List<TodayTask> mutatedTodayTask = [];
    List<TaskPriority> mutatedTaskPrioties = [];

    for (final taskItem in taskItems) {
      if (!mutatedTaskPrioties.contains(taskItem.taskPriority)) {
        mutatedTaskPrioties.add(taskItem.taskPriority);
      }
    }

    for (final taskPriority in mutatedTaskPrioties) {
      TodayTask todayTask =
          TodayTask(taskPriority: taskPriority, taskItems: []);

      for (final taskItem in taskItems) {
        if (taskItem.taskPriority == taskPriority) {
          todayTask.taskItems.add(taskItem);
        }
      }

      mutatedTodayTask.add(todayTask);
    }

    mutatedTodayTask.sort((todayTaskPrevious, todayTaskNext) {
      return todayTaskPrevious.taskPriority.typeWeight
          .compareTo(todayTaskNext.taskPriority.typeWeight);
    });

    return mutatedTodayTask;
  }

  @override
  void initState() {
    super.initState();
    todayTasks = _generateTodayTask(widget.taskItems);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: todayTasks
            .map((todayTask) => TaskPriorityCell(
                  taskItems: todayTask.taskItems,
                  taskPriority: todayTask.taskPriority,
                ))
            .toList(),
      ),
    );
  }
}

class TaskPriorityCell extends StatefulWidget {
  const TaskPriorityCell(
      {super.key, required this.taskItems, required this.taskPriority});
  final TaskPriority taskPriority;
  final List<TaskItem> taskItems;

  @override
  State<TaskPriorityCell> createState() => _TaskPriorityCellState();
}

class _TaskPriorityCellState extends State<TaskPriorityCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              // Need to set static width, to overcome responsive issue
              width: 56,
              decoration: BoxDecoration(
                color: widget.taskPriority.color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.taskPriority.label,
                      style: TimeBoxingTextStyle.headline2(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite(),
                      )),
                  Text(widget.taskPriority.name,
                      textAlign: TextAlign.center,
                      style: TimeBoxingTextStyle.paragraph5(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite(),
                      )),
                ],
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                children: widget.taskItems
                    .map((taskItem) => TaskItemCell(taskItem: taskItem))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItemCell extends StatefulWidget {
  const TaskItemCell({super.key, required this.taskItem});
  final TaskItem taskItem;
  @override
  State<TaskItemCell> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TaskItemCell> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: TimeBoxingColors.text40(TimeBoxingColorType.tint),
                    width: 0.5,
                  ))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.taskItem.name,
                          style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          )),
                      const Spacer(),
                      Text(widget.taskItem.time,
                          style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.play_arrow,
                size: 8,
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Text(widget.taskItem.description,
              style: TimeBoxingTextStyle.paragraph4(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text40(TimeBoxingColorType.tint),
              )),
        ],
      ),
    );
  }
}
