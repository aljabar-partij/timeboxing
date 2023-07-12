import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class WeeklyDatePicker extends StatefulWidget {
  const WeeklyDatePicker({super.key});

  @override
  State<WeeklyDatePicker> createState() => _WeeklyDatePickerState();
}

class _WeeklyDatePickerState extends State<WeeklyDatePicker> {
  /// Date Properties
  DateTime _selectedDate = DateTime.now();
  DateTime _startDate = DateTime.now();
  List<DateTime> _dateList = [];

  /// Date Methods
  DateTime getNearestMonday() {
    DateTime now = DateTime.now();
    int currentWeekday = now.weekday;
    int daysUntilMonday = (currentWeekday + 7 - DateTime.monday) % 7;
    return now.subtract(Duration(days: daysUntilMonday));
  }

  List<DateTime> get7DaysAfter(DateTime date) {
    List<DateTime> dateList = [];
    for (var i = 0; i < 7; i++) {
      dateList.add(date.add(Duration(days: i)));
    }
    return dateList;
  }

  void _selectDate(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  void _goToPreviousWeek() {
    setState(() {
      _startDate = _startDate.subtract(Duration(days: 7));
      _dateList = get7DaysAfter(_startDate);
    });
  }

  void _goToNextWeek() {
    setState(() {
      _startDate = _startDate.add(Duration(days: 7));
      _dateList = get7DaysAfter(_startDate);
    });
  }

  List<Widget> _buildWeekdays() {
    return _dateList.indexed.map((dateIndexed) {
      final date = _startDate.add(Duration(days: dateIndexed.$1));
      final weekdayName = DateFormat.E()
          .format(_startDate.add(Duration(days: dateIndexed.$1)))[0];
      final isSelected = date == _selectedDate;
      return Expanded(
        child: GestureDetector(
          onTap: () => _selectDate(date),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: isSelected
                    ? TimeBoxingColors.primary60(TimeBoxingColorType.shade)
                    : null,
              ),
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  Text(
                    weekdayName,
                    textAlign: TextAlign.center,
                    style: TimeBoxingTextStyle.paragraph1(
                      isSelected
                          ? TimeBoxingFontWeight.bold
                          : TimeBoxingFontWeight.regular,
                      isSelected
                          ? TimeBoxingColors.neutralWhite()
                          : TimeBoxingColors.neutralBlack(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Text(
                      date.day.toString(),
                      style: TimeBoxingTextStyle.paragraph1(
                        isSelected
                            ? TimeBoxingFontWeight.bold
                            : TimeBoxingFontWeight.regular,
                        isSelected
                            ? TimeBoxingColors.neutralWhite()
                            : TimeBoxingColors.neutralBlack(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    _startDate = getNearestMonday();
    _dateList = get7DaysAfter(_startDate);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: TimeBoxingColors.primary70(TimeBoxingColorType.tint)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  DateFormat.yMMMM().format(_startDate),
                  style: TimeBoxingTextStyle.paragraph4(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.neutralBlack(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: _buildWeekdays(),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => _goToPreviousWeek(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TimeBoxingColors.primary50(
                            TimeBoxingColorType.shade),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      size: 16,
                      color:
                          TimeBoxingColors.primary50(TimeBoxingColorType.shade),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () => _goToNextWeek(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TimeBoxingColors.primary50(
                            TimeBoxingColorType.shade),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      size: 16,
                      color:
                          TimeBoxingColors.primary50(TimeBoxingColorType.shade),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
