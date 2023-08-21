import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class EmptyTaskComponent extends StatefulWidget {
  const EmptyTaskComponent({super.key});

  @override
  State<EmptyTaskComponent> createState() => _EmptyTaskComponentState();
}

class _EmptyTaskComponentState extends State<EmptyTaskComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Text(
              'June 23, 2023',
              style: TimeBoxingTextStyle.paragraph4(
                TimeBoxingFontWeight.bold,
                TimeBoxingColors.text20(TimeBoxingColorType.shade),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 186,
              height: 100,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.network(
                    'https://i.kym-cdn.com/entries/icons/original/000/043/403/cover3.jpg'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Let’s create priority list!',
              style: TimeBoxingTextStyle.headline4(
                TimeBoxingFontWeight.bold,
                TimeBoxingColors.text90(TimeBoxingColorType.shade),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Write down all your ideas, and arrage them into your best priority list.',
              textAlign: TextAlign.center,
              style: TimeBoxingTextStyle.paragraph2(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.text(TimeBoxingColorType.shade),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                color: TimeBoxingColors.primary50(TimeBoxingColorType.tint),
              ),
              child: Row(
                children: [
                  Icon(
                    TimeboxingIcons.plusCircle,
                    size: 20,
                    color:
                        TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create a priority list now',
                        style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Never miss every single task you wrote here.',
                        style: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text40(TimeBoxingColorType.tint),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.chevron_right,
                    size: 20,
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
