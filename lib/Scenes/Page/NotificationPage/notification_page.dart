import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Component/notification_card.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Model/notification_item.dart';
import 'package:timeboxing/Shared/Widget/TaskList/Model/task_item_model.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
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
      username: 'aku',
      userAvatar: 'image.jpg',
      taskItem: TaskItem(
          id: '1',
          name: 'ayo main valorant',
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
      username: 'kamu',
      userAvatar: 'image.jpg',
      taskItem: TaskItem(
          id: '1',
          name: 'ayo gausah main',
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
        ),
      ),
    ));
  }
}
