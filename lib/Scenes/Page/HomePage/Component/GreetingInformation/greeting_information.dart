import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/GreetingInformation/Model/greeting_info_model.dart';

class TimeboxingGreetingInfo extends StatefulWidget {
  const TimeboxingGreetingInfo({super.key});

  @override
  State<TimeboxingGreetingInfo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TimeboxingGreetingInfo> {
  final _greetingInfo = GreetingInfo(
    greetingMessage: 'Haloo mas mas biasa bangun',
    username: 'JordyNoSkill',
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: TimeBoxingColors.primary70(TimeBoxingColorType.tint),
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _greetingInfo.greetingMessage,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TimeBoxingTextStyle.paragraph2(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.neutralBlack(),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _greetingInfo.username,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TimeBoxingTextStyle.headline4(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.neutralBlack(),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                color: TimeBoxingColors.primary60(TimeBoxingColorType.shade),
                TimeboxingIcons.alarm,
                size: 16,
              ),
              const SizedBox(width: 12),
              Icon(
                color: TimeBoxingColors.primary60(TimeBoxingColorType.shade),
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
