import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TutorialCard/Model/tutorial_model.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TutorialCard/tutorial_item.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class TutorialCard extends StatefulWidget {
  const TutorialCard({super.key});

  @override
  State<TutorialCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TutorialCard> {
  //Dummy Properties
  final List<TutorialModel> tutorialModels = [
    TutorialModel(
      id: '1',
      tittle: 'TimeBox Priority Creation',
      description: 'Need a hand for our app? Please welcome, we got your back!',
      image:
          'https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg',
    ),
    TutorialModel(
      id: '2',
      tittle: 'What is TimeBox?',
      description: 'Need a hand for our app? Please welcome, we got your back!',
      image:
          'https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg',
    ),
    TutorialModel(
      id: '3',
      tittle: 'Creating Best Priority List',
      description: 'Need a hand for our app? Please welcome, we got your back!',
      image:
          'https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg',
    ),
  ];

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
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Timeboxing Tutorial',
            style: TimeBoxingTextStyle.headline4(
              TimeBoxingFontWeight.bold,
              TimeBoxingColors.text90(TimeBoxingColorType.shade),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ...tutorialModels
              .map(
                  (tutorialModel) => TutorialItem(tutorialModel: tutorialModel))
              .toList()
        ],
      ),
    );
  }
}
