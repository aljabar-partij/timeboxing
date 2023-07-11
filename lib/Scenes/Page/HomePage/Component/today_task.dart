import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 17,
                  width: 52,
                  decoration: BoxDecoration(
                      color:
                          TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                      child: Text('Priority',
                          style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.neutralWhite(),
                          ))),
                ),
                Container(
                  height: 17,
                  width: 52,
                  decoration: BoxDecoration(
                    color: TimeBoxingColors.neutralWhite(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                      child: Text('Time',
                          style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.primary40(
                                TimeBoxingColorType.shade),
                          ))),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('June 23, 2023',
                      style: TimeBoxingTextStyle.paragraph4(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.text20(TimeBoxingColorType.shade),
                      )),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: Center(
                child: Text('Jordys Task List',
                    style: TimeBoxingTextStyle.headline4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.text90(TimeBoxingColorType.shade),
                    )),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 66,
                  width: 56,
                  decoration: BoxDecoration(
                    color: TimeBoxingColors.rainbow1(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      Center(
                          child: Text('P0',
                              style: TimeBoxingTextStyle.headline2(
                                TimeBoxingFontWeight.bold,
                                TimeBoxingColors.neutralWhite(),
                              ))),
                      Center(
                          child: Text('Very High',
                              style: TimeBoxingTextStyle.paragraph5(
                                TimeBoxingFontWeight.bold,
                                TimeBoxingColors.neutralWhite(),
                              ))),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 9, 0, 9),
                  child: Column(
                    children: [
                      Container(
                          height: 66,
                          width: 283,
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.neutralWhite(),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Task',
                                      style: TimeBoxingTextStyle.paragraph3(
                                        TimeBoxingFontWeight.regular,
                                        TimeBoxingColors.text(
                                            TimeBoxingColorType.tint),
                                      )),
                                  const Spacer(),
                                  Text('Time',
                                      style: TimeBoxingTextStyle.paragraph3(
                                        TimeBoxingFontWeight.bold,
                                        TimeBoxingColors.text(
                                            TimeBoxingColorType.tint),
                                      )),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Icon(
                                    TimeboxingIcons.plusCircle,
                                    size: 16,
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                              Text('Description',
                                  style: TimeBoxingTextStyle.paragraph4(
                                    TimeBoxingFontWeight.regular,
                                    TimeBoxingColors.text40(
                                        TimeBoxingColorType.tint),
                                  )),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
