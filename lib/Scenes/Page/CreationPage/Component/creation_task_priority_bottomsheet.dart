import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_assignee_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_priority_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_repeat_dialog.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/Component/Dialog/creation_time_dialog.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationTaskPriorityBottomsheet extends StatefulWidget {
  const CreationTaskPriorityBottomsheet({super.key});

  @override
  State<CreationTaskPriorityBottomsheet> createState() =>
      _CreationTaskPriorityBottomsheetState();
}

class _CreationTaskPriorityBottomsheetState
    extends State<CreationTaskPriorityBottomsheet> {
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
                    'Add Priority',
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
                            controller: TextEditingController(text: 'Ah ah ah'),
                            maxLines: 1,
                            style: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Go to gym',
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
                          builder: (context) => const CreationTimeDialog());
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
                          Text(
                            '12.00',
                            style: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
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
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const CreationRepeatDialog();
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
                              'Repeat',
                              style: TimeBoxingTextStyle.paragraph3(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(TimeBoxingColorType.tint),
                              ),
                            ),
                          ),
                          Text(
                            'Never',
                            style: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint),
                            ),
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
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: ((context) =>
                              const CreationPriorityDialog()));
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
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            decoration: BoxDecoration(
                                color: TimeBoxingColors.rainbow1(),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              'Very High',
                              style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.bold,
                                  TimeBoxingColors.accent90(
                                      TimeBoxingColorType.tint)),
                            ),
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
                          builder: ((context) =>
                              const CreationAssigneeDialog()));
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
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            decoration: BoxDecoration(
                                color: TimeBoxingColors.text80(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              'Gilang Keren',
                              style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.tint)),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            decoration: BoxDecoration(
                                color: TimeBoxingColors.text80(
                                    TimeBoxingColorType.tint),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              'Galih Maniez',
                              style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.text(
                                      TimeBoxingColorType.tint)),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '+2',
                            style: TimeBoxingTextStyle.paragraph4(
                                TimeBoxingFontWeight.regular,
                                TimeBoxingColors.text(
                                    TimeBoxingColorType.tint)),
                          ),
                          const SizedBox(
                            width: 4,
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
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        color: TimeBoxingColors.primary50(
                            TimeBoxingColorType.shade),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Save',
                          style: TimeBoxingTextStyle.paragraph2(
                              TimeBoxingFontWeight.bold,
                              TimeBoxingColors.neutralWhite()),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: TimeBoxingColors.neutralWhite(),
                          size: 18,
                        ),
                      ],
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
