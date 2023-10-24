import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class CreationPriorityDialog extends StatelessWidget {
  const CreationPriorityDialog({super.key, required this.didSavePriority});
  final Function(TaskPriority taskPriority)? didSavePriority;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      content: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Priority',
                  style: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.text(TimeBoxingColorType.tint),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context, true),
                  child: Icon(
                    Icons.close,
                    color: TimeBoxingColors.text(TimeBoxingColorType.tint),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              didSavePriority!(TaskPriority(type: TaskPriorityType.p0));
              Navigator.pop(context, true);
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              margin: const EdgeInsets.only(bottom: 8),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: TimeBoxingColors.rainbow1(),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Text(
                    'P0',
                    style: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite()),
                  ),
                  Expanded(
                    child: Text(
                      'Very High',
                      textAlign: TextAlign.center,
                      style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              didSavePriority!(TaskPriority(type: TaskPriorityType.p1));
              Navigator.pop(context, true);
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: TimeBoxingColors.rainbow8(),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Text(
                    'P1',
                    style: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite()),
                  ),
                  Expanded(
                    child: Text(
                      'High',
                      textAlign: TextAlign.center,
                      style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              didSavePriority!(TaskPriority(type: TaskPriorityType.p2));
              Navigator.pop(context, true);
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: MediaQuery.of(context).size.width / 2,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: TimeBoxingColors.rainbow4(),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Text(
                    'P2',
                    style: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite()),
                  ),
                  Expanded(
                    child: Text(
                      'Medium',
                      textAlign: TextAlign.center,
                      style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              didSavePriority!(TaskPriority(type: TaskPriorityType.p3));
              Navigator.pop(context, true);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: TimeBoxingColors.rainbow6(),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Text(
                    'P3',
                    style: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite()),
                  ),
                  Expanded(
                    child: Text(
                      'Low',
                      textAlign: TextAlign.center,
                      style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralWhite()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
