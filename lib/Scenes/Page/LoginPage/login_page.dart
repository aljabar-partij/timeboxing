import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/componnent/intro_text.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/componnent/login_form.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/signup_page.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'signup_page.dart';
import 'componnent/google_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'Welcome to',
                style: TimeBoxingTextStyle.headline1Plus(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.text90(TimeBoxingColorType.shade)),
              ),
              Text(
                'Timeboxing',
                style: TimeBoxingTextStyle.headline1Plus(
                    TimeBoxingFontWeight.bold,
                    TimeBoxingColors.primary40(TimeBoxingColorType.shade)),
              ),
              const SizedBox(
                height: 25,
              ),
              const IntroText(text: 'Let’s create your very own account here.'),
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
              const LoginForm(),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Don\’t have an account yet?',
                    style: TimeBoxingTextStyle.paragraph1(
                        TimeBoxingFontWeight.regular,
                        TimeBoxingColors.text(TimeBoxingColorType.shade)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()),
                        );
                      },
                      child: Text(
                        'Sign up',
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
