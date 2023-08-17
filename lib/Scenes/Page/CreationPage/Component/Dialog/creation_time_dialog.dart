import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class CreationTimeDialog extends StatefulWidget {
  const CreationTimeDialog({super.key});

  @override
  State<CreationTimeDialog> createState() => _CreationTimeDialogState();
}

class _CreationTimeDialogState extends State<CreationTimeDialog> {
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
            children: [
              SizedBox(
                width: 180,
                height: 120,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (onDateTimeChanged) {},
                  mode: CupertinoDatePickerMode.time,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 120,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color:
                          TimeBoxingColors.primary50(TimeBoxingColorType.shade),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    'Set',
                    style: TimeBoxingTextStyle.paragraph2(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.neutralWhite()),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}