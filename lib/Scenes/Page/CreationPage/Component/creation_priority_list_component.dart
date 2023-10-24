import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/creation_task_priority_bottomsheet.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/ViewModel/PrioritySettingReducer/priority_setting_cubit.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskForm/ViewModel/cubit/task_item_cubit.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Component/task_list.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/ViewModel/weekly_date_picker_cubit.dart';

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

  @override
  Widget build(BuildContext context) {
    final taskCount = widget.taskItems.length;
    if (widget.taskItems.length > 6) {
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
                            '$taskCount Total Priority',
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
                        BlocBuilder<WeeklyDatePickerCubit,
                            WeeklyDatePickerState>(
                          builder: (context, state) {
                            return Text(
                              DateFormat.yMMMMd().format(state.selectedDate),
                              style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.shade)),
                            );
                          },
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
                child: TaskList(
                  taskItems: widget.taskItems,
                  didTapTask: (taskItem) {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32.0),
                        ),
                      ),
                      context: context,
                      builder: (_) {
                        return BlocProvider(
                          create: (_) =>
                              PrioritySettingCubit(taskItem: taskItem),
                          child: CreationTaskPriorityBottomsheet(
                            taskItem: taskItem,
                            title: 'Edit Task',
                            didSuccessSave: () {
                              final currentDate = context
                                  .read<WeeklyDatePickerCubit>()
                                  .state
                                  .selectedDate;
                              context
                                  .read<TaskItemCubit>()
                                  .getTask(currentDate);
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
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
                BlocBuilder<WeeklyDatePickerCubit, WeeklyDatePickerState>(
                  builder: (context, state) {
                    return Text(
                      DateFormat.yMMMMd().format(state.selectedDate),
                      style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text(TimeBoxingColorType.shade)),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TaskList(
              taskItems: widget.taskItems,
              didTapTask: (taskItem) {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(32.0),
                    ),
                  ),
                  context: context,
                  builder: (_) {
                    return BlocProvider(
                      create: (_) => PrioritySettingCubit(taskItem: taskItem),
                      child: CreationTaskPriorityBottomsheet(
                        taskItem: taskItem,
                        title: 'Edit Task',
                        didSuccessSave: () {
                          final currentDate = context
                              .read<WeeklyDatePickerCubit>()
                              .state
                              .selectedDate;
                          context.read<TaskItemCubit>().getTask(currentDate);
                        },
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      );
    }
  }
}
