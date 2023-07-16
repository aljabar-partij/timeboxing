import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TaskList> {
  final TaskItem _taskItem = TaskItem(
    description: 'Ini Jordy gatau',
    id: '12',
    name: 'Mengerjakan Tugas apa',
    taskPriority: TaskPriority(type: TaskPriorityType.p0),
    time: '08.00',
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: _taskItem.taskPriority.color,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_taskItem.taskPriority.label ?? '',
                        style: TimeBoxingTextStyle.headline2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite(),
                        )),
                    Text(_taskItem.taskPriority.name ?? '',
                        style: TimeBoxingTextStyle.paragraph5(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite(),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Task(taskItem: _taskItem),
                  Task(taskItem: _taskItem),
                  Task(taskItem: _taskItem),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  const Task({super.key, required this.taskItem});
  final TaskItem taskItem;
  @override
  State<Task> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Task> {
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
                width: 4,
              ),
              const Icon(
                Icons.play_arrow,
                size: 12,
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
