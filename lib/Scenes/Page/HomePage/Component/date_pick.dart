import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class TimeboxingDatePick extends StatefulWidget {
  const TimeboxingDatePick({super.key});

  @override
  State<TimeboxingDatePick> createState() => _TimeboxingDatePickState();
}

class _TimeboxingDatePickState extends State<TimeboxingDatePick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: TimeBoxingColors.primary70(TimeBoxingColorType.tint),
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
      child: Row(
        children: [
          Text(
            'Ini Date Picker',
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
