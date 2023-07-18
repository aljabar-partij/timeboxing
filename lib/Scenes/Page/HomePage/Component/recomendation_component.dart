import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Model/recommendation_card_model.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class RecommendationCardWidget extends StatelessWidget {
  const RecommendationCardWidget({super.key, required this.recommendationCard});

  final RecommendationCard recommendationCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      color: TimeBoxingColors.neutralWhite(),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            recommendationCard.title,
            style: TimeBoxingTextStyle.headline4(
              TimeBoxingFontWeight.bold,
              TimeBoxingColors.neutralBlack(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 128,
            decoration: BoxDecoration(
              color: TimeBoxingColors.primary50(TimeBoxingColorType.tint),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            child: Image.network(fit: BoxFit.fill, recommendationCard.imageUrl),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            recommendationCard.text,
            style: TimeBoxingTextStyle.paragraph2(
              TimeBoxingFontWeight.regular,
              TimeBoxingColors.text(TimeBoxingColorType.shade),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.note,
                    size: 24,
                    color:
                        TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Go to todo list now",
                          style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.primary40(
                                TimeBoxingColorType.shade),
                          ),
                        ),
                        Text(
                          "Monitor your daily task here.",
                          style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text40(TimeBoxingColorType.tint),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 16,
                    color:
                        TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
