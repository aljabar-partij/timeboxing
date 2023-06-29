import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/greeting_information.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/date_pick.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/today_task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  List<TimeboxingHomePlaceholder> _placeholders = [
    TimeboxingHomePlaceholder(
        id: 'Greeting', isShow: true, widget: TimeboxingGreetingInfo()),
    TimeboxingHomePlaceholder(
        id: 'DatePick', isShow: true, widget: TimeboxingDatePick()),
    TimeboxingHomePlaceholder(
        id: 'InvitationCard', isShow: true, widget: TimeboxingInvitationCard()),
    TimeboxingHomePlaceholder(
        id: 'TimeBoxing', isShow: true, widget: TimeboxingTodayTask()),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _placeholders.map((data) {
            if (data.isShow) {
              return data.widget;
            }
            return Container();
          }).toList(),
        ),
      ),
    );
  }
}

class TimeboxingHomePlaceholder {
  String id;
  bool isShow;
  Widget widget;

  TimeboxingHomePlaceholder(
      {required this.id, required this.isShow, required this.widget});
}
