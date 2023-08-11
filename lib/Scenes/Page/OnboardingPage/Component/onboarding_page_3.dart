import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/OnboardingPage/Component/onboarding_page_first_task.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class OnboardingPage3 extends StatefulWidget {
  const OnboardingPage3({super.key});

  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        'When do you',
                        style: TimeBoxingTextStyle.headline1Plus(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        'wake up & sleep?',
                        style: TimeBoxingTextStyle.headline1Plus(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.primary40(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    FittedBox(
                      child: Text(
                        'Simply scroll to adjust the time.',
                        style: TimeBoxingTextStyle.paragraph1(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4)),
                                      color: TimeBoxingColors.secondary(
                                          TimeBoxingColorType.shade)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.wb_sunny,
                                        size: 16,
                                        color: TimeBoxingColors.neutralWhite(),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Wake Up',
                                        style: TimeBoxingTextStyle.paragraph1(
                                          TimeBoxingFontWeight.bold,
                                          TimeBoxingColors.neutralWhite(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 130,
                                      width: 180,
                                      child: CupertinoDatePicker(
                                        onDateTimeChanged: (e) {},
                                        mode: CupertinoDatePickerMode.time,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4)),
                                      color: TimeBoxingColors.secondary60(
                                          TimeBoxingColorType.shade)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.nightlight,
                                        size: 16,
                                        color: TimeBoxingColors.neutralWhite(),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Sleep',
                                        style: TimeBoxingTextStyle.paragraph1(
                                          TimeBoxingFontWeight.bold,
                                          TimeBoxingColors.neutralWhite(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  height: 130,
                                  width: 180,
                                  child: CupertinoDatePicker(
                                    onDateTimeChanged: (e) {},
                                    mode: CupertinoDatePickerMode.time,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: FittedBox(
                        child: Text(
                          'You can change this later in the app.',
                          textAlign: TextAlign.center,
                          style: TimeBoxingTextStyle.paragraph1(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.text30(TimeBoxingColorType.tint),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const OnboardingPageFirstTask();
                            },
                          ),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const OnboardingPageFirstTask();
                              },
                            ),
                          );
                        },
                        child: FittedBox(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                color: TimeBoxingColors.primary30(
                                    TimeBoxingColorType.shade)),
                            child: Text(
                              'Continue',
                              textAlign: TextAlign.center,
                              style: TimeBoxingTextStyle.headline4(
                                TimeBoxingFontWeight.bold,
                                TimeBoxingColors.neutralWhite(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const OnboardingPageFirstTask();
                              },
                            ),
                          );
                        },
                        child: FittedBox(
                          child: Text(
                            'Skip for now',
                            textAlign: TextAlign.center,
                            style: TimeBoxingTextStyle.paragraph1(
                              TimeBoxingFontWeight.bold,
                              TimeBoxingColors.text30(TimeBoxingColorType.tint),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const OnboardingPageFirstTask();
                          },
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: TimeBoxingColors.neutralBlack(),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close_rounded,
                            color: TimeBoxingColors.neutralWhite(),
                            size: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Skip',
                          style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.text90(TimeBoxingColorType.shade),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
