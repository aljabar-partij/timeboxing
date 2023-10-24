import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key, required this.taskItems, this.didTapTask});
  final List<TaskItem> taskItems;
  final Function(TaskItem taskItem)? didTapTask;

  @override
  State<TaskList> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TaskList> {
  List<TodayTask> todayTasks = [];

  List<TodayTask> _generateTodayTask(List<TaskItem> taskItems) {
    List<TodayTask> mutatedTodayTask = [];
    List<TaskPriority> mutatedTaskPrioties = [];

    for (final taskItem in taskItems) {
      var taskPriotiry = taskItem.taskPriority;
      if (taskPriotiry != null) {
        if (!mutatedTaskPrioties.contains(taskPriotiry)) {
          mutatedTaskPrioties.add(taskPriotiry);
        }
      }
    }

    for (final taskPriority in mutatedTaskPrioties) {
      TodayTask todayTask =
          TodayTask(taskPriority: taskPriority, taskItems: const []);
      List<TaskItem> todayTaskItem = [];

      for (final taskItem in taskItems) {
        if (taskItem.taskPriority == taskPriority) {
          todayTaskItem.add(taskItem);
        }
      }

      todayTask.taskItems = todayTaskItem;
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
    return Column(
      children: todayTasks
          .map((todayTask) => TaskPriorityCell(
                taskItems: todayTask.taskItems,
                taskPriority: todayTask.taskPriority,
                didTapTask: widget.didTapTask,
              ))
          .toList(),
    );
  }
}

class TaskPriorityCell extends StatelessWidget {
  const TaskPriorityCell(
      {super.key,
      required this.taskItems,
      required this.taskPriority,
      this.didTapTask});
  final TaskPriority taskPriority;
  final List<TaskItem> taskItems;
  final Function(TaskItem taskItem)? didTapTask;

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
                color: taskPriority.color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(taskPriority.label,
                      style: TimeBoxingTextStyle.headline2(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite(),
                      )),
                  Text(taskPriority.name,
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
                children: taskItems
                    .map((taskItem) => TaskItemCell(
                          taskItem: taskItem,
                          didTapTask: didTapTask,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItemCell extends StatelessWidget {
  TaskItemCell({super.key, required this.taskItem, this.didTapTask}) {
    final startTime = taskItem.startTime;
    final endTime = taskItem.endTime;
    String startTimeLabel = '';
    String endTimeLabel = '';

    if (startTime != null) startTimeLabel = DateFormat.jm().format(startTime);
    if (endTime != null) endTimeLabel = DateFormat.jm().format(endTime);

    timeLabel = '$startTimeLabel - $endTimeLabel';
  }

  final TaskItem taskItem;
  final Function(TaskItem taskItem)? didTapTask;
  String timeLabel = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          didTapTask!(taskItem);
        },
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
                        Text(taskItem.title,
                            style: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            )),
                        const Spacer(),
                        Text(timeLabel,
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
            Text(taskItem.description,
                style: TimeBoxingTextStyle.paragraph4(
                  TimeBoxingFontWeight.regular,
                  TimeBoxingColors.text40(TimeBoxingColorType.tint),
                )),
          ],
        ),
      ),
    );
  }
}
