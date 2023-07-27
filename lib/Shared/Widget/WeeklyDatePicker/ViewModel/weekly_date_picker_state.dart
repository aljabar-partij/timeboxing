part of 'weekly_date_picker_cubit.dart';

class WeeklyDatePickerState {
  late DateTime selectedDate;
  late DateTime startDate;
  late List<WeeklyDatePickerInfo> listDateInfo;

  WeeklyDatePickerState({
    DateTime? selectedDate,
    DateTime? startDate,
    List<WeeklyDatePickerInfo>? listDateInfo,
  }) {
    this.selectedDate = selectedDate ?? DateTime.now();
    this.startDate = startDate ?? DateTime.now();
    this.listDateInfo = listDateInfo ?? [];
  }

  WeeklyDatePickerState copyWith({
    DateTime? selectedDate,
    DateTime? startDate,
    List<WeeklyDatePickerInfo>? listDate,
  }) {
    return WeeklyDatePickerState(
      selectedDate: selectedDate ?? this.selectedDate,
      startDate: startDate ?? this.startDate,
      listDateInfo: listDateInfo ?? this.listDateInfo,
    );
  }
}

class WeeklyDatePickerInfo {
  DateTime date;
  late String dayName;
  late String dateNumberString;

  WeeklyDatePickerInfo({required this.date}) {
    dayName = DateFormat.E().format(date)[0];
    dateNumberString = date.day.toString();
  }
}
