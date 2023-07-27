import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class IntroText extends StatelessWidget {
  final String text;
  const IntroText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TimeBoxingTextStyle.paragraph1(TimeBoxingFontWeight.regular,
          TimeBoxingColors.text90(TimeBoxingColorType.shade)),
    );
  }
}
