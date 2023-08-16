import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/TutorialCard/Model/tutorial_model.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class TutorialItem extends StatefulWidget {
  const TutorialItem({super.key, required this.tutorialModel});
  final TutorialModel tutorialModel;

  @override
  State<TutorialItem> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TutorialItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                widget.tutorialModel.image,
              ),
            ),
            Text(
              widget.tutorialModel.tittle,
              style: TimeBoxingTextStyle.paragraph2(
                TimeBoxingFontWeight.bold,
                TimeBoxingColors.neutralBlack(),
              ),
            ),
            Text(
              widget.tutorialModel.description,
              style: TimeBoxingTextStyle.paragraph3(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.neutralBlack(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
