import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/componnent/google_button.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/componnent/intro_text.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/componnent/signup_form.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/login_page.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TimeBoxingColors.neutralLotion(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 81,
              ),
              Text(
                'Let’s get',
                style: TimeBoxingTextStyle.headline1Plus(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.text90(TimeBoxingColorType.shade)),
              ),
              Row(
                children: [
                  Text(
                    'this',
                    style: TimeBoxingTextStyle.headline1Plus(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.text90(TimeBoxingColorType.shade)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Started',
                    style: TimeBoxingTextStyle.headline1Plus(
                        TimeBoxingFontWeight.bold,
                        TimeBoxingColors.primary40(TimeBoxingColorType.shade)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const IntroText(
                  text:
                      "Get back in the driver's seat. Sign in to regain control."),
              const SizedBox(
                height: 69,
              ),
              const GoogleButton(),
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: TimeBoxingColors.text30(TimeBoxingColorType.tint),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('or',
                        style: TimeBoxingTextStyle.paragraph2(
                            TimeBoxingFontWeight.light,
                            TimeBoxingColors.text30(TimeBoxingColorType.tint))),
                  ),
                  Expanded(
                    child: Divider(
                      color: TimeBoxingColors.text30(TimeBoxingColorType.tint),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              const SignupForm(),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Already have an account?',
                    style: TimeBoxingTextStyle.paragraph1(
                        TimeBoxingFontWeight.regular,
                        TimeBoxingColors.text(TimeBoxingColorType.shade)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TimeBoxingTextStyle.paragraph1(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.primary40(
                                TimeBoxingColorType.shade)),
                      ))
                ],
              )
            ]),
      ),
    ));
  }
}
