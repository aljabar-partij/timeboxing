import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class TimeboxingGreetingInfo extends StatefulWidget {
  const TimeboxingGreetingInfo({super.key});

  @override
  State<TimeboxingGreetingInfo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TimeboxingGreetingInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Greetings',
                style: TimeBoxingTextStyle.paragraph2(
                  TimeBoxingFontWeight.regular,
                  TimeBoxingColors.neutralBlack(),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Username',
                style: TimeBoxingTextStyle.headline4(
                  TimeBoxingFontWeight.bold,
                  TimeBoxingColors.neutralBlack(),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(
                TimeboxingIcons.alarm,
                size: 16,
              ),
              SizedBox(width: 12),
              Icon(
                TimeboxingIcons.plusCircle,
                size: 16,
              ),
            ],
          )
        ],
      ),
    );
  }
}
