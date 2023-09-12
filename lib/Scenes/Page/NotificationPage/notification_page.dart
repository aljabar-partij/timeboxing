import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/invitation_card_model.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Component/empty_notification_card.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Component/notification_card.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Model/notification_item.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  final List<InvitationCard> invitationItems = [
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
  ];

  final List<NotificationItem> notificationItems = [
    NotificationItem(
      username: 'Galih',
      userAvatar: 'image.jpg',
      taskItem: TaskItem(
          id: '1',
          name: 'ayo main dbd',
          description: 'haloo coy',
          time: 'time',
          date: 'now',
          taskPriority: TaskPriority(
            id: '1',
            type: TaskPriorityType.p0,
          )),
      sameTaskNumber: 1,
      invitationStat: false,
    ),
    NotificationItem(
      username: 'Galih',
      userAvatar: 'image.jpg',
      taskItem: TaskItem(
          id: '1',
          name: 'kalo main valo ?',
          description: 'hai semuaaa ',
          time: 'time',
          date: 'now',
          taskPriority: TaskPriority(
            id: '1',
            type: TaskPriorityType.p0,
          )),
      sameTaskNumber: 1,
      invitationStat: false,
    ),
    NotificationItem(
      username: 'Galih',
      userAvatar: 'image.jpg',
      taskItem: TaskItem(
          id: '1',
          name: 'AYO BELAJAR BERSAMA BINARY BUDDIES',
          description: 'haloo coy',
          time: 'time',
          date: 'now',
          taskPriority: TaskPriority(
            id: '1',
            type: TaskPriorityType.p0,
          )),
      sameTaskNumber: 1,
      invitationStat: true,
    ),
  ];

  Widget _generateLayoutBasedOnNotificationItemCount(
      List<NotificationItem> notificationItems,
      List<InvitationCard> invitationItems) {
    if (notificationItems.isNotEmpty && invitationItems.isNotEmpty) {
      return Column(
        children: [
          const TimeboxingInvitationCard(),
          const SizedBox(
            height: 17,
          ),
          ...notificationItems.map(
            (notificationItem) => NotificationCard(
              notificationItems: notificationItem,
            ),
          ),
        ],
      );
    } else if (invitationItems.isNotEmpty) {
      return const TimeboxingInvitationCard();
    }
    ;
    return const EmptyNotificationPage();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
            decoration: BoxDecoration(
                color: TimeBoxingColors.primary70(TimeBoxingColorType.tint)),
            child: Row(
              children: [
                const Icon(
                  Icons.chevron_left,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Notifications',
                  style: TimeBoxingTextStyle.headline3(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralBlack()),
                ),
              ],
            ),
          ),
          _generateLayoutBasedOnNotificationItemCount(
              notificationItems, invitationItems),
        ],
      )),
    ));
  }
}
