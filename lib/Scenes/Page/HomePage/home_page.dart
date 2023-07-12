import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/greeting_information.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/recomendation_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/weekly_date_picker_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/today_task.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/home_model.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/recommendation_card_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  static RecommendationCard recommendationCard = RecommendationCard(
    id: "",
    imageUrl:
        "https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg",
    text:
        "Confused prioritizing your activities? Don’t worry, we are here to help you fulfill your daily tasks!",
    title: "Recommendation For You",
  );

  final List<TimeboxingHomePlaceholder> _placeholders = [
    TimeboxingHomePlaceholder(
        id: 'Greeting', isShow: true, widget: TimeboxingGreetingInfo()),
    TimeboxingHomePlaceholder(
        id: 'DatePick', isShow: true, widget: TimeboxingDatePick()),
    TimeboxingHomePlaceholder(
        id: 'InvitationCard', isShow: true, widget: TimeboxingInvitationCard()),
    TimeboxingHomePlaceholder(
        id: 'TodayTask', isShow: true, widget: TimeboxingTodayTask()),
    TimeboxingHomePlaceholder(
      id: 'Recommendation',
      isShow: true,
      widget: RecommendationCardWidget(
        recommendationCard: recommendationCard,
      ),
    ),
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
