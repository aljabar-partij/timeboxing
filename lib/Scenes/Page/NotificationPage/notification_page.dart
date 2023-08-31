import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Model/notification_item.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NotificationPage> {
  final NotificationItem notificationItem = NotificationItem(
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TimeboxingInvitationCard(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          NetworkImage(notificationItem.userAvatar),
                    ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: notificationItem.username,
                            style: TimeBoxingTextStyle.paragraph2(
                                TimeBoxingFontWeight.bold,
                                TimeBoxingColors.neutralBlack()),
                            children: <TextSpan>[
                              TextSpan(
                                text: " invites you to join his activity:",
                                style: TimeBoxingTextStyle.paragraph2(
                                    TimeBoxingFontWeight.regular,
                                    TimeBoxingColors.neutralBlack()),
                              )
                            ],
                          ),
                        ),
                        Text(
                          notificationItem.taskItem.name,
                          style: TimeBoxingTextStyle.paragraph2(
                              TimeBoxingFontWeight.bold,
                              TimeBoxingColors.neutralBlack()),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          decoration: BoxDecoration(
                              color: TimeBoxingColors.rainbow1(),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          child: Text(
                            notificationItem.taskItem.taskPriority.name,
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
                              notificationItem.taskItem.date,
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
                                      color: TimeBoxingColors.neutralBlack())),
                              width: 2,
                              height: 2,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              notificationItem.taskItem.time,
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
                            Icon(
                              Icons.check_circle_outline,
                              color: TimeBoxingColors.neutralBlack(),
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'You Have Accepted this invitation',
                              style: TimeBoxingTextStyle.paragraph4(
                                  TimeBoxingFontWeight.regular,
                                  TimeBoxingColors.primary50(
                                      TimeBoxingColorType.shade)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
