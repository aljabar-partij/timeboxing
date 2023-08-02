import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class OnboardingPageFirstTask extends StatefulWidget {
  const OnboardingPageFirstTask({super.key});

  @override
  State<OnboardingPageFirstTask> createState() =>
      _OnboardingPageFirstTaskState();
}

class _OnboardingPageFirstTaskState extends State<OnboardingPageFirstTask> {
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
                        'You’re All Set!',
                        style: TimeBoxingTextStyle.headline1Plus(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        'Try to create first task?',
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
                        'Let’s try to create your first-ever task & priorities!',
                        style: TimeBoxingTextStyle.paragraph1(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Center(
                      child: FittedBox(
                        child: Column(children: [
                          Placeholder(
                            child: Text('component 1'),
                          ),
                          Placeholder(
                            child: Text('component 2'),
                          ),
                        ]),
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
                    FittedBox(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
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
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: GestureDetector(
                    onTap: () {},
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
