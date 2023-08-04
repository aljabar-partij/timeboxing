import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
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
                        'Arrange your',
                        style: TimeBoxingTextStyle.headline1Plus(
                          TimeBoxingFontWeight.bold,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        'main priority',
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
                        'Effortlessly prioritize and organize your primary tasks of the day.',
                        style: TimeBoxingTextStyle.paragraph1(
                          TimeBoxingFontWeight.regular,
                          TimeBoxingColors.text90(TimeBoxingColorType.shade),
                        ),
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: FittedBox(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            child: Image.network(
                                width: 302,
                                height: 400,
                                fit: BoxFit.fill,
                                'https://www.american-time.com/wp-content/uploads/2021/02/91-National-24V-12in-Black-Steel-Round-Flush-Mount.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
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
