import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
            child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeboxingInvitationCard(),
        ],
      ),
    )));
  }
}
