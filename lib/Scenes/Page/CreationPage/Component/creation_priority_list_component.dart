import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Component/task_list.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class CreationPriorityListComponent extends StatefulWidget {
  const CreationPriorityListComponent({super.key, required this.taskItems});
  final List<TaskItem> taskItems;

  @override
  State<CreationPriorityListComponent> createState() =>
      _CreationPriorityListComponentState();
}

class _CreationPriorityListComponentState
    extends State<CreationPriorityListComponent> {
  bool isExpanded = false;
  late bool isNeedToMakePanel;

  Widget makeLayout(bool isNeedToMakePanel) {
    if (isNeedToMakePanel) {
      // More than 6 priority
      return ExpansionPanelList(
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.zero,
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            this.isExpanded = !isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            isExpanded: isExpanded,
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Priority List',
                      style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.neutralBlack()),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 8),
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.primary60(
                                TimeBoxingColorType.shade),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Text(
                            '12 Total Priority',
                            style: TimeBoxingTextStyle.paragraph4(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.primary90(
                                    TimeBoxingColorType.tint)),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: TimeBoxingColors.neutralBlack(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'June 23, 2023',
                          style: TimeBoxingTextStyle.paragraph4(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.shade)),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TaskList(taskItems: widget.taskItems),
              ),
            ),
          ),
        ],
      );
    } else {
      // Less than 6 priority
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Priority List',
                  style: TimeBoxingTextStyle.paragraph2(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralBlack()),
                ),
                Text(
                  'June 23, 2023',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.text(TimeBoxingColorType.shade)),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TaskList(taskItems: widget.taskItems)
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    isNeedToMakePanel = widget.taskItems.length > 4;
  }

  @override
  Widget build(BuildContext context) {
    return makeLayout(isNeedToMakePanel);
  }
}
