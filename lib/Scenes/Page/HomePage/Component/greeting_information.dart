import 'package:flutter/material.dart';
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
                    TimeBoxingFontWeight.regular),
              ),
              const SizedBox(height: 4),
              Text(
                'Username',
                style: TimeBoxingTextStyle.headline4(),
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(Icons.close),
              SizedBox(width: 12),
              Icon(Icons.close),
            ],
          )
        ],
      ),
    );
  }
}
