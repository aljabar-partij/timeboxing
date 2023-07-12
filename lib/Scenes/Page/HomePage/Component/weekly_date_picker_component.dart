import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/Component/weekly_date_picker_component.dart';

class TimeboxingDatePick extends StatefulWidget {
  const TimeboxingDatePick({super.key});

  @override
  State<TimeboxingDatePick> createState() => _TimeboxingDatePickState();
}

class _TimeboxingDatePickState extends State<TimeboxingDatePick> {
  @override
  Widget build(BuildContext context) {
    return const WeeklyDatePicker();
  }
}
