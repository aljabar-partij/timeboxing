import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_assignee_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_priority_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_repeat_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_time_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Model/user_model.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/ViewModel/PrioritySettingReducer/priority_setting_cubit.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/ViewModel/SearchAssigneeReducer/cubit/search_assignee_cubit.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class CreationTaskPriorityBottomsheet extends StatefulWidget {
  const CreationTaskPriorityBottomsheet(
      {super.key,
      required this.taskItem,
      required this.title,
      this.didSuccessSave});
  final TaskItem taskItem;
  final String title;
  final void Function()? didSuccessSave;

  @override
  State<CreationTaskPriorityBottomsheet> createState() =>
      _CreationTaskPriorityBottomsheetState();
}

class _CreationTaskPriorityBottomsheetState
    extends State<CreationTaskPriorityBottomsheet> {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _notesEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleEditingController.text = widget.taskItem.title;
    _notesEditingController.text = widget.taskItem.description;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    widget.title,
                    style: TimeBoxingTextStyle.headline4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text90(TimeBoxingColorType.shade),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: TimeBoxingColors.neutralWhite(),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 14,
                          child: TextField(
                            controller: _titleEditingController,
                            onChanged: (value) {
                              context
                                  .read<PrioritySettingCubit>()
                                  .saveTitleAndNotes(title: value);
                            },
                            maxLines: 1,
                            style: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Title',
                              hintStyle: TimeBoxingTextStyle.paragraph3(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(TimeBoxingColorType.tint),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              border: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 14,
                          child: TextField(
                            controller: _notesEditingController,
                            onChanged: (value) {
                              context
                                  .read<PrioritySettingCubit>()
                                  .saveTitleAndNotes(notes: value);
                            },
                            maxLines: 1,
                            style: TimeBoxingTextStyle.paragraph4(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text70(TimeBoxingColorType.tint),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Notes',
                              hintStyle: TimeBoxingTextStyle.paragraph4(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text70(
                                    TimeBoxingColorType.tint),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              border: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return CreationTimeDialog(
                              didSaveTime: (startTime, endTime) {
                                context
                                    .read<PrioritySettingCubit>()
                                    .saveTime(startTime, endTime);
                              },
                            );
                          });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: TimeBoxingColors.neutralWhite(),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Time',
                              style: TimeBoxingTextStyle.paragraph3(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(TimeBoxingColorType.tint),
                              ),
                            ),
                          ),
                          BlocBuilder<PrioritySettingCubit,
                              PrioritySettingState>(
                            builder: (context, state) {
                              var startTime = state.taskItem.startTime;
                              var endTime = state.taskItem.endTime;
                              var formattedStartTime = '';
                              var formattedEndTime = '';

                              if (startTime != null && endTime != null) {
                                formattedStartTime =
                                    DateFormat.jm().format(startTime);
                                formattedEndTime =
                                    DateFormat.jm().format(endTime);
                              }

                              return Text(
                                '$formattedStartTime - $formattedEndTime',
                                style: TimeBoxingTextStyle.paragraph3(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.tint),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: TimeBoxingColors.primary50(
                                TimeBoxingColorType.shade),
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  /* FEATURE NOT USED YET */
                  // GestureDetector(
                  //   onTap: () {
                  //     showDialog(
                  //         context: context,
                  //         builder: (context) {
                  //           return const CreationRepeatDialog();
                  //         });
                  //   },
                  //   child: Container(
                  //     padding: const EdgeInsets.all(12),
                  //     decoration: BoxDecoration(
                  //       borderRadius:
                  //           const BorderRadius.all(Radius.circular(8)),
                  //       color: TimeBoxingColors.neutralWhite(),
                  //     ),
                  //     child: Row(
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Expanded(
                  //           child: Text(
                  //             'Repeat',
                  //             style: TimeBoxingTextStyle.paragraph3(
                  //               TimeBoxingFontWeight.regular,
                  //               TimeBoxingColors.text(TimeBoxingColorType.tint),
                  //             ),
                  //           ),
                  //         ),
                  //         Text(
                  //           'Never',
                  //           style: TimeBoxingTextStyle.paragraph3(
                  //             TimeBoxingFontWeight.regular,
                  //             TimeBoxingColors.text(TimeBoxingColorType.tint),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           width: 8,
                  //         ),
                  //         Icon(
                  //           Icons.chevron_right,
                  //           color: TimeBoxingColors.primary50(
                  //               TimeBoxingColorType.shade),
                  //           size: 16,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => CreationPriorityDialog(
                                didSavePriority: (taskPriority) {
                                  context
                                      .read<PrioritySettingCubit>()
                                      .savePriority(taskPriority);
                                },
                              ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: TimeBoxingColors.neutralWhite(),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Priority',
                              style: TimeBoxingTextStyle.paragraph3(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(TimeBoxingColorType.tint),
                              ),
                            ),
                          ),
                          BlocBuilder<PrioritySettingCubit,
                              PrioritySettingState>(
                            builder: (context, state) {
                              var taskPriority = state.taskItem.taskPriority;
                              if (taskPriority != null) {
                                return Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                  decoration: BoxDecoration(
                                      color: taskPriority.color,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4))),
                                  child: Text(
                                    taskPriority.name,
                                    style: TimeBoxingTextStyle.paragraph4(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.accent90(
                                            TimeBoxingColorType.tint)),
                                  ),
                                );
                              }

                              return Container();
                            },
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.unfold_more,
                            color: TimeBoxingColors.primary50(
                                TimeBoxingColorType.shade),
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: ((_) => BlocProvider(
                                create: (_) {
                                  final selectedUsers = context
                                      .read<PrioritySettingCubit>()
                                      .state
                                      .taskItem
                                      .assignees;
                                  return SearchAssigneeCubit(selectedUsers);
                                },
                                child: CreationAssigneeDialog(
                                    didTapInvite: (selectedUsers) {
                                  context
                                      .read<PrioritySettingCubit>()
                                      .saveAssignee(selectedUsers);
                                }),
                              )));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: TimeBoxingColors.neutralWhite(),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Assignee',
                              style: TimeBoxingTextStyle.paragraph3(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(TimeBoxingColorType.tint),
                              ),
                            ),
                          ),
                          BlocBuilder<PrioritySettingCubit,
                              PrioritySettingState>(
                            builder: (context, state) {
                              final assignees = state.taskItem.assignees;
                              final moreThanTwoAssignees = assignees.length > 2;
                              final int? totalAssigneeLeft =
                                  moreThanTwoAssignees
                                      ? assignees.length - 2
                                      : null;

                              if (assignees.isNotEmpty) {
                                return Row(children: [
                                  ...assignees
                                      .take(2)
                                      .map((assignee) =>
                                          AssigneeChip(user: assignee))
                                      .toList(),
                                  moreThanTwoAssignees
                                      ? Container(
                                          margin:
                                              const EdgeInsets.only(right: 4),
                                          child: Text(
                                            '+$totalAssigneeLeft',
                                            style:
                                                TimeBoxingTextStyle.paragraph4(
                                                    TimeBoxingFontWeight
                                                        .regular,
                                                    TimeBoxingColors.text(
                                                        TimeBoxingColorType
                                                            .tint)),
                                          ),
                                        )
                                      : Container()
                                ]);
                              }
                              return Container();
                            },
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: TimeBoxingColors.primary50(
                                TimeBoxingColorType.shade),
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<PrioritySettingCubit, PrioritySettingState>(
                    builder: (context, state) {
                      final errorMessage = state.errorMessage;
                      if (errorMessage != null) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.sim_card_alert,
                                size: 12,
                                color: TimeBoxingColors.rainbow1(),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                errorMessage,
                                style: TimeBoxingTextStyle.paragraph4(
                                    TimeBoxingFontWeight.bold,
                                    TimeBoxingColors.rainbow1()),
                              ),
                            ],
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<PrioritySettingCubit>()
                          .saveTaskItem()
                          .then((isSuccess) {
                        if (isSuccess) {
                          widget.didSuccessSave!();
                          Navigator.pop(context, true);
                        }
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                          color: TimeBoxingColors.primary50(
                              TimeBoxingColorType.shade),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: BlocBuilder<PrioritySettingCubit,
                          PrioritySettingState>(
                        builder: (context, state) {
                          final isLoading = state.isLoading;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                isLoading ? 'Loading...' : 'Save',
                                style: TimeBoxingTextStyle.paragraph2(
                                    TimeBoxingFontWeight.bold,
                                    TimeBoxingColors.neutralWhite()),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              isLoading
                                  ? Container()
                                  : Icon(
                                      Icons.arrow_forward,
                                      color: TimeBoxingColors.neutralWhite(),
                                      size: 18,
                                    ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 84,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      color: TimeBoxingColors.text70(TimeBoxingColorType.tint)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AssigneeChip extends StatelessWidget {
  final User user;
  const AssigneeChip({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
          color: TimeBoxingColors.text80(TimeBoxingColorType.tint),
          borderRadius: const BorderRadius.all(Radius.circular(4))),
      child: Text(
        user.username,
        style: TimeBoxingTextStyle.paragraph4(TimeBoxingFontWeight.regular,
            TimeBoxingColors.text(TimeBoxingColorType.tint)),
      ),
    );
  }
}
