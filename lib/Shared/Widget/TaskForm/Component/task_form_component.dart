import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'icon/ellipse-dots.svg',
            width: 16,
            height: 16,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                  child: TextField(
                    maxLines: 1,
                    style: TimeBoxingTextStyle.paragraph3(
                      TimeBoxingFontWeight.regular,
                      TimeBoxingColors.text(TimeBoxingColorType.tint),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Go to gym',
                      hintStyle: TimeBoxingTextStyle.paragraph3(
                        TimeBoxingFontWeight.regular,
                        TimeBoxingColors.text(TimeBoxingColorType.tint),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 0.5,
                  color: TimeBoxingColors.text(TimeBoxingColorType.tint),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
