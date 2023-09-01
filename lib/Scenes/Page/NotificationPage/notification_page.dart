import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/NotificationPage/Component/notification_card.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TimeboxingInvitationCard(),
            NotificationCard(),
          ],
        ),
      ),
    ));
  }
}
