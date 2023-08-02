import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationTaskForm extends StatefulWidget {
  const CreationTaskForm({super.key});

  @override
  State<CreationTaskForm> createState() => _CreationTaskFormState();
}

class _CreationTaskFormState extends State<CreationTaskForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: TimeBoxingColors.neutralBlack(),
                width: 0.1,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                  child: TextField(
                    maxLines: 1,
                    style: TimeBoxingTextStyle.paragraph3(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.text(TimeBoxingColorType.tint),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Go to gym',
                      hintStyle: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.regular,
                        TimeBoxingColors.text(TimeBoxingColorType.tint),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 0.5,
                  color: TimeBoxingColors.text90(TimeBoxingColorType.shade),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CreationTaskItem extends StatefulWidget {
  const CreationTaskItem({super.key});

  @override
  State<CreationTaskItem> createState() => _CreationTaskItemState();
}

class _CreationTaskItemState extends State<CreationTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: TimeBoxingColors.neutralBlack(),
                width: 1,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Icon(
                Icons.minimize,
                size: 10,
                color: TimeBoxingColors.neutralBlack(),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Minum susu rasa semangka, kamunya lucu aku nya ngaceng. Enak susu nya mama mama. Minum susu rasa semangka, kamunya lucu aku nya ngaceng. Enak susu nya mama mama',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TimeBoxingTextStyle.paragraph3(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text(TimeBoxingColorType.tint),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: TimeBoxingColors.primary50(
                                TimeBoxingColorType.shade),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 10,
                            color: TimeBoxingColors.neutralWhite(),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Add\nPriority',
                          textAlign: TextAlign.center,
                          style: TimeBoxingTextStyle.paragraph5(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.tint),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: 0.8,
                  color: TimeBoxingColors.text80(TimeBoxingColorType.tint),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}