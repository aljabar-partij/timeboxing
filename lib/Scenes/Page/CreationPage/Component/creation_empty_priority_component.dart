import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationEmptyPriorityComponent extends StatelessWidget {
  const CreationEmptyPriorityComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Priority List',
            style: TimeBoxingTextStyle.paragraph2(
                TimeBoxingFontWeight.bold, TimeBoxingColors.neutralBlack()),
          ),
          const SizedBox(
            height: 8,
          ),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.network(
                    'https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg',
                    width: 112,
                    height: 60,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let’s create priority list!',
                        style: TimeBoxingTextStyle.headline4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.text90(TimeBoxingColorType.shade)),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Write all your ideas down below, and arrage them into your best priority list. ',
                        style: TimeBoxingTextStyle.paragraph3(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text(TimeBoxingColorType.shade)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
