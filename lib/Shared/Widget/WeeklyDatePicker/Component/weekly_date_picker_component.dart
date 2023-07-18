import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:timeboxing/Shared/Widget/WeeklyDatePicker/ViewModel/weekly_date_picker_cubit.dart';

class WeeklyDatePicker extends StatelessWidget {
  const WeeklyDatePicker({super.key});

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
                BlocBuilder<WeeklyDatePickerCubit, WeeklyDatePickerState>(
                  builder: (context, state) {
                    return Text(
                      DateFormat.yMMMM().format(state.selectedDate),
                      style: TimeBoxingTextStyle.paragraph4(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralBlack(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          BlocBuilder<WeeklyDatePickerCubit, WeeklyDatePickerState>(
            builder: (context, state) {
              return Row(
                children: _buildWeekdays(
                  listDate: state.listDateInfo,
                  selectedDate: state.selectedDate,
                  context: context,
                ),
              );
            },
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () =>
                      context.read<WeeklyDatePickerCubit>().goToPreviousWeek(),
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
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () =>
                      context.read<WeeklyDatePickerCubit>().goToNextWeek(),
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

  /// Private UI Methods
  List<Widget> _buildWeekdays({
    required List<WeeklyDatePickerInfo> listDate,
    required DateTime selectedDate,
    required BuildContext context,
  }) {
    return listDate.indexed.map((dateIndexed) {
      final date = dateIndexed.$2.date;
      final dayName = dateIndexed.$2.dayName;
      final dateNumberString = dateIndexed.$2.dateNumberString;
      final isSelected = dateIndexed.$2.date == selectedDate;

      return Expanded(
        child: GestureDetector(
          onTap: () => context.read<WeeklyDatePickerCubit>().selectDate(date),
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
                    dayName,
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
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      dateNumberString,
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
}
