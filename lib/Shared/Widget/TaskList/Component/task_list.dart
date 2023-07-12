import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: TimeBoxingColors.neutralBlack(),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('P',
                        style: TimeBoxingTextStyle.headline2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite(),
                        )),
                    Text('conditional',
                        style: TimeBoxingTextStyle.paragraph5(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite(),
                        )),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Expanded(
              flex: 8,
              child: Column(
                children: [
                  TaskItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItem extends StatefulWidget {
  const TaskItem({super.key});

  @override
  State<TaskItem> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: TimeBoxingColors.text40(TimeBoxingColorType.tint),
                    width: 0.5,
                  ))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Task',
                          style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          )),
                      const Spacer(),
                      Text('Time',
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
          Text('Description',
              style: TimeBoxingTextStyle.paragraph4(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text40(TimeBoxingColorType.tint),
              )),
        ],
      ),
    );
  }
}
