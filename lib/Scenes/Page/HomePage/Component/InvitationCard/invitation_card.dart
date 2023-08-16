import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/invitation_card_model.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class TimeboxingInvitationCard extends StatefulWidget {
  const TimeboxingInvitationCard({super.key});

  @override
  State<TimeboxingInvitationCard> createState() =>
      _TimeboxingInvitationCardState();
}

class _TimeboxingInvitationCardState extends State<TimeboxingInvitationCard> {
  final List<InvitationCard> _invitationCard = [
    InvitationCard(
        username: "Galih Clueless",
        userAvatar:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        taskItem: TaskItem(
          id: '1',
          name: 'Tutorial Meng-Aim dengan benar',
          description: 'Harus punya pc bagus',
          taskPriority: TaskPriority(id: '1', type: TaskPriorityType.p0),
          time: '08.00 - 09.00',
          date: 'June 30, 2023',
        ),
        sameTaskNumber: 2),
    InvitationCard(
        username: "Galih Clueless",
        userAvatar:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        taskItem: TaskItem(
          id: '2',
          name: 'Tutorial Meng-Aim dengan benar',
          description: 'Harus punya pc bagus',
          taskPriority: TaskPriority(id: '1', type: TaskPriorityType.p0),
          time: '08.00 - 09.00',
          date: 'June 30, 2023',
        ),
        sameTaskNumber: 2),
    InvitationCard(
        username: "Galih Clueless",
        userAvatar:
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        taskItem: TaskItem(
          id: '2',
          name: 'Tutorial Meng-Aim dengan benar',
          description: 'Harus punya pc bagus',
          taskPriority: TaskPriority(id: '1', type: TaskPriorityType.p0),
          time: '08.00 - 09.00',
          date: 'June 30, 2023',
        ),
        sameTaskNumber: 2),
  ];
  final InvitationCard invitationCard = InvitationCard(
      username: "Galih Clueless",
      userAvatar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      taskItem: TaskItem(
        id: '3',
        name: 'Tutorial Meng-Aim dengan benar',
        description: 'Harus punya pc bagus',
        taskPriority: TaskPriority(id: '1', type: TaskPriorityType.p0),
        time: '08.00 - 09.00',
        date: 'June 30, 2023',
      ),
      sameTaskNumber: 2);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 16,
              color: TimeBoxingColors.primary60(TimeBoxingColorType.shade),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
                color: TimeBoxingColors.neutralLotion(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                            onTap: null,
                            child: Row(
                              children: [
                                Text('see more',
                                    style: TimeBoxingTextStyle.paragraph5(
                                        TimeBoxingFontWeight.regular,
                                        TimeBoxingColors.rainbow1())),
                                Icon(
                                  Icons.chevron_right,
                                  size: 12,
                                  color: TimeBoxingColors.rainbow1(),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage:
                              NetworkImage(invitationCard.userAvatar),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      text: invitationCard.username,
                                      style: TimeBoxingTextStyle.paragraph2(
                                          TimeBoxingFontWeight.bold,
                                          TimeBoxingColors.neutralBlack()),
                                      children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          " invites you to join his activity:",
                                      style: TimeBoxingTextStyle.paragraph2(
                                          TimeBoxingFontWeight.regular,
                                          TimeBoxingColors.neutralBlack()),
                                    )
                                  ])),
                              Text(
                                invitationCard.taskItem.name,
                                style: TimeBoxingTextStyle.paragraph2(
                                    TimeBoxingFontWeight.bold,
                                    TimeBoxingColors.neutralBlack()),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                decoration: BoxDecoration(
                                    color: TimeBoxingColors.rainbow1(),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(4))),
                                child: Text(
                                  invitationCard.taskItem.taskPriority.name,
                                  style: TimeBoxingTextStyle.paragraph4(
                                      TimeBoxingFontWeight.bold,
                                      TimeBoxingColors.accent90(
                                          TimeBoxingColorType.tint)),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text(
                                    invitationCard.taskItem.date,
                                    style: TimeBoxingTextStyle.paragraph3(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.neutralBlack()),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: TimeBoxingColors
                                                .neutralBlack())),
                                    width: 2,
                                    height: 2,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    invitationCard.taskItem.time,
                                    style: TimeBoxingTextStyle.paragraph3(
                                        TimeBoxingFontWeight.regular,
                                        TimeBoxingColors.neutralBlack()),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      decoration: BoxDecoration(
                                          color:
                                              TimeBoxingColors.neutralWhite(),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(4)),
                                          border: Border.all(
                                              color:
                                                  TimeBoxingColors.secondary80(
                                                      TimeBoxingColorType
                                                          .shade),
                                              width: 1)),
                                      child: Text('Decline',
                                          style: TimeBoxingTextStyle.paragraph4(
                                              TimeBoxingFontWeight.bold,
                                              TimeBoxingColors.secondary80(
                                                  TimeBoxingColorType.shade))),
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      decoration: BoxDecoration(
                                        color: TimeBoxingColors.primary20(
                                            TimeBoxingColorType.shade),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(4)),
                                      ),
                                      child: Text('Accept',
                                          style: TimeBoxingTextStyle.paragraph4(
                                              TimeBoxingFontWeight.bold,
                                              TimeBoxingColors.primary90(
                                                  TimeBoxingColorType.tint))),
                                    ),
                                  )),
                                ],
                              ),
                              if (invitationCard.sameTaskNumber != 0)
                                const SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.warning,
                                    size:
                                        16, // Adjust the size of the icon as needed
                                    color: TimeBoxingColors.secondary60(
                                        TimeBoxingColorType
                                            .shade), // Set the color of the icon
                                  ),
                                  Text(
                                    "You already have ${invitationCard.sameTaskNumber} activities taking place at that time.",
                                    style: TimeBoxingTextStyle.paragraph3(
                                      TimeBoxingFontWeight.regular,
                                      TimeBoxingColors.secondary60(
                                          TimeBoxingColorType.shade),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: TimeBoxingColors.primary70(
                                      TimeBoxingColorType.shade),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4))),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: TimeBoxingColors.text70(
                                      TimeBoxingColorType.tint),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4))),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: TimeBoxingColors.text70(
                                      TimeBoxingColorType.tint),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4))),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: TimeBoxingColors.text70(
                                      TimeBoxingColorType.tint),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4))),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 4, 8),
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: TimeBoxingColors.text70(
                                      TimeBoxingColorType.tint),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4))),
                            ),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
