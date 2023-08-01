import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/GreetingInformation/greeting_information.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/InvitationCard/invitation_card.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TodayTask/today_task.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/RecommendationCard/recomendation_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TutorialCard/tutorial_component.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/recommendation_card_model.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/home_model.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/ViewModel/weekly_date_picker_cubit.dart';

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
      id: 'Greeting',
      isShow: true,
      widget: TimeboxingGreetingInfo(),
    ),
    TimeboxingHomePlaceholder(
        id: 'InvitationCard', isShow: true, widget: TimeboxingInvitationCard()),
    TimeboxingHomePlaceholder(
      id: 'TodayTask',
      isShow: true,
      widget: TimeboxingTodayTask(),
    ),
    TimeboxingHomePlaceholder(
      id: 'Recommendation',
      isShow: true,
      widget: RecommendationCardWidget(
        recommendationCard: recommendationCard,
      ),
    ),
    TimeboxingHomePlaceholder(
      id: 'Tutorial',
      isShow: true,
      widget: const TutorialCard(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeeklyDatePickerCubit(),
        ),
      ],
      child: SafeArea(
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
      ),
    );
  }
}
