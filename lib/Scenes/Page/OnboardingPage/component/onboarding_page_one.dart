import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class OnboardingPageOne extends StatefulWidget {
  const OnboardingPageOne({super.key});

  @override
  State<OnboardingPageOne> createState() => _OnboardingPageOneState();
}

class _OnboardingPageOneState extends State<OnboardingPageOne> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: TimeBoxingColors.neutralWhite(),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(24, 32, 24, 0)),
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: TimeBoxingColors.neutralWhite()),
                    onPressed: () {},
                    child: Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: TimeBoxingColors.neutralBlack(),
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 25, 24, 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time Boxing',
                          style: TimeBoxingTextStyle.headline1Plus(
                              TimeBoxingFontWeight.bold,
                              TimeBoxingColors.neutralBlack()),
                        ),
                        Row(
                          children: [
                            Text(
                              'Is A ',
                              style: TimeBoxingTextStyle.headline1Plus(
                                  TimeBoxingFontWeight.bold,
                                  TimeBoxingColors.neutralBlack()),
                            ),
                            Text(
                              'Daily Planner',
                              style: TimeBoxingTextStyle.headline1Plus(
                                  TimeBoxingFontWeight.bold,
                                  TimeBoxingColors.primary40(
                                      TimeBoxingColorType.shade)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Organize tasks, improve productivity,and \nincrease your focus,',
                          // overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 3,
                          style: TimeBoxingTextStyle.paragraph1(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text90(
                                  TimeBoxingColorType.shade)),
                        ),
                        const SizedBox(height: 44),
                        //
                        Container(
                          width: 303,
                          height: 393,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border:
                                  Border.all(width: 10, color: Colors.black),
                              color: TimeBoxingColors.accent70(
                                  TimeBoxingColorType.shade)),
                        ),
                        const SizedBox(height: 51),
                        Text(
                          'Full access awaits! Please login for a personalized jpjp \nand comprehensive experience.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TimeBoxingTextStyle.paragraph2(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text(TimeBoxingColorType.tint)),
                        ),
                        const SizedBox(height: 29),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(320, 48),
                              backgroundColor: TimeBoxingColors.primary30(
                                  TimeBoxingColorType.shade)),
                          onPressed: () {},
                          child: Text(
                            'Get Started ',
                            style: TimeBoxingTextStyle.headline4(
                                TimeBoxingFontWeight.bold,
                                TimeBoxingColors.neutralWhite()),
                          ),
                        ),
                        // Text('dnwpqnqpndpq'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
