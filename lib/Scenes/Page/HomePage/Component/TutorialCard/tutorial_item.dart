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
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 75,
                  decoration: BoxDecoration(
                    color: TimeBoxingColors.primary50(TimeBoxingColorType.tint),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Image.network(
                      fit: BoxFit.fill, widget.tutorialModel.image),
                ),
                const SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.tutorialModel.tittle,
                        style: TimeBoxingTextStyle.paragraph2(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text(TimeBoxingColorType.shade),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.tutorialModel.description,
                        style: TimeBoxingTextStyle.paragraph3(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text30(TimeBoxingColorType.tint),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: 16,
            color: TimeBoxingColors.primary40(TimeBoxingColorType.shade),
          )
        ],
      ),
    );
  }
}
