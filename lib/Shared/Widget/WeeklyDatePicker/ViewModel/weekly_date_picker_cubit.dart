import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';

part 'weekly_date_picker_state.dart';

class WeeklyDatePickerCubit extends Cubit<WeeklyDatePickerState> {
  WeeklyDatePickerCubit() : super(WeeklyDatePickerState()) {
    state.startDate = _getNearestMonday(state.selectedDate);
    state.listDateInfo = _get7DaysAfter(state.startDate);
  }

  void selectDate(DateTime date) {
    DateTime selectedDate = date;
    DateTime startDate = _getNearestMonday(selectedDate);
    List<WeeklyDatePickerInfo> listDateInfo = _get7DaysAfter(startDate);

    final datePickerState = state.copyWith(
      selectedDate: selectedDate,
      startDate: startDate,
      listDate: listDateInfo,
    );

    emit(datePickerState);
  }

  void goToPreviousWeek() {
    DateTime selectedDate = state.selectedDate;
    DateTime startDate = state.startDate.subtract(const Duration(days: 7));
    List<WeeklyDatePickerInfo> listDateInfo = _get7DaysAfter(startDate);

    final datePickerState = state.copyWith(
      selectedDate: selectedDate,
      startDate: startDate,
      listDate: listDateInfo,
    );

    emit(datePickerState);
  }

  void goToNextWeek() {
    DateTime selectedDate = state.selectedDate;
    DateTime startDate = state.startDate.add(const Duration(days: 7));
    List<WeeklyDatePickerInfo> listDateInfo = _get7DaysAfter(startDate);

    final datePickerState = state.copyWith(
      selectedDate: selectedDate,
      startDate: startDate,
      listDate: listDateInfo,
    );

    emit(datePickerState);
  }

  // Private Methods
  DateTime _getNearestMonday(DateTime date) {
    DateTime now = date;
    int currentWeekday = now.weekday;
    int daysUntilMonday = (currentWeekday + 7 - DateTime.monday) % 7;
    return now.subtract(Duration(days: daysUntilMonday));
  }

  List<WeeklyDatePickerInfo> _get7DaysAfter(DateTime date) {
    List<WeeklyDatePickerInfo> listDateInfo = [];
    for (var i = 0; i < 7; i++) {
      final dateTime = date.add(Duration(days: i));
      final dateInfo = WeeklyDatePickerInfo(date: dateTime);
      listDateInfo.add(dateInfo);
    }
    return listDateInfo;
  }
}
