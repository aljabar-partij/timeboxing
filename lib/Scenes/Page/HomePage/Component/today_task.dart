import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class TimeboxingTodayTask extends StatefulWidget {
  const TimeboxingTodayTask({super.key});

  @override
  State<TimeboxingTodayTask> createState() => _TimeboxingTodayTaskState();
}

class _TimeboxingTodayTaskState extends State<TimeboxingTodayTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
        decoration: BoxDecoration(
          color: TimeBoxingColors.neutralWhite(),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Text(
              'Ini Section Today Task',
              style: TimeBoxingTextStyle.paragraph2(
                TimeBoxingFontWeight.regular,
                TimeBoxingColors.neutralBlack(),
              ),
            ),
            const Spacer(),
            const Icon(Icons.calendar_today),
          ],
        ), //SEBELUM DEVELOP, ROW JANGAN LUPA DIHAPUS  KARENA HANYA BUAT PENANDA DOANG
      );
  }
}
