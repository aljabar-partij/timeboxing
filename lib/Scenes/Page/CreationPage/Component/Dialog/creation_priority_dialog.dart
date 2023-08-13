import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationPriorityDialog extends StatefulWidget {
  const CreationPriorityDialog({super.key});

  @override
  State<CreationPriorityDialog> createState() => _CreationPriorityDialogState();
}

class _CreationPriorityDialogState extends State<CreationPriorityDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      content: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Priority',
                  style: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.text(TimeBoxingColorType.tint),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context, true),
                  child: Icon(
                    Icons.close,
                    color: TimeBoxingColors.text(TimeBoxingColorType.tint),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: TimeBoxingColors.rainbow1(),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Text(
                  'P0',
                  style: TimeBoxingTextStyle.paragraph2(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralWhite()),
                ),
                Text(
                  'Very High',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.neutralWhite()),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: TimeBoxingColors.rainbow8(),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Text(
                  'P1',
                  style: TimeBoxingTextStyle.paragraph2(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralWhite()),
                ),
                Text(
                  'High',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.neutralWhite()),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: TimeBoxingColors.rainbow4(),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Text(
                  'P2',
                  style: TimeBoxingTextStyle.paragraph2(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralWhite()),
                ),
                Text(
                  'Medium',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.neutralWhite()),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: TimeBoxingColors.rainbow6(),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Text(
                  'P3',
                  style: TimeBoxingTextStyle.paragraph2(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralWhite()),
                ),
                Text(
                  'Low',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.neutralWhite()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}