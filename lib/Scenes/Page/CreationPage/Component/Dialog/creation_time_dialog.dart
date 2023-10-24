import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationTimeDialog extends StatefulWidget {
  final Function(DateTime startDateTime, DateTime endDateTime)? didSaveTime;
  const CreationTimeDialog(
      {super.key, required this.didSaveTime});

  @override
  State<CreationTimeDialog> createState() => _CreationTimeDialogState();
}

class _CreationTimeDialogState extends State<CreationTimeDialog> {
  late DateTime _selectedStartDateTime;
  late DateTime _selectedEndDateTime;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _selectedStartDateTime = DateTime.now().copyWith(minute: 0);
    _selectedEndDateTime =
        DateTime.now().copyWith(minute: 0).add(const Duration(minutes: 30));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
      ),
      content: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.text(TimeBoxingColorType.tint),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context, true),
                  child: Icon(
                    Icons.close,
                    color: TimeBoxingColors.text(TimeBoxingColorType.tint),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                    color: TimeBoxingColors.text90(TimeBoxingColorType.tint),
                    borderRadius: const BorderRadius.all(Radius.circular(6))),
                child: Text(
                  'Start Time',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.shade)),
                ),
              ),
              SizedBox(
                width: 180,
                height: 60,
                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text(TimeBoxingColorType.shade)),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: _selectedStartDateTime,
                    minuteInterval: 15,
                    onDateTimeChanged: (onDateTimeChanged) {
                      _selectedStartDateTime = onDateTimeChanged;
                    },
                    mode: CupertinoDatePickerMode.time,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              height: 0.5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                    color: TimeBoxingColors.text90(TimeBoxingColorType.tint),
                    borderRadius: const BorderRadius.all(Radius.circular(6))),
                child: Text(
                  'End Time',
                  style: TimeBoxingTextStyle.paragraph4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text(TimeBoxingColorType.shade)),
                ),
              ),
              SizedBox(
                width: 180,
                height: 60,
                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TimeBoxingTextStyle.paragraph4(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text(TimeBoxingColorType.shade)),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: _selectedEndDateTime,
                    minuteInterval: 15,
                    onDateTimeChanged: (onDateTimeChanged) {
                      _selectedEndDateTime = onDateTimeChanged;
                    },
                    mode: CupertinoDatePickerMode.time,
                  ),
                ),
              ),
            ],
          ),
          errorMessage != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sim_card_alert,
                        size: 12,
                        color: TimeBoxingColors.rainbow1(),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        errorMessage ?? '',
                        style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.rainbow1()),
                      ),
                    ],
                  ),
                )
              : Container(),
          GestureDetector(
            onTap: () {
              final isValidTime =
                  _selectedEndDateTime.isAfter(_selectedStartDateTime);
              if (!isValidTime) {
                setState(() {
                  errorMessage = 'End time should more than the Start time';
                });
                return;
              }

              errorMessage = null;
              widget.didSaveTime!(_selectedStartDateTime, _selectedEndDateTime);
              Navigator.pop(context, true);
            },
            child: Container(
              margin: const EdgeInsets.only(top: 24),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Text(
                'Set',
                style: TimeBoxingTextStyle.paragraph2(
                    TimeBoxingFontWeight.bold, TimeBoxingColors.neutralWhite()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
