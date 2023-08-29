import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const TimeboxingInvitationCard(),
              ListTile(
                title: const Text('data'),
                tileColor: TimeBoxingColors.rainbow1(),
                hoverColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
