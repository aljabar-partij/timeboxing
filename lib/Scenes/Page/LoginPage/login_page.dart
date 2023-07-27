import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/signup_page.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  bool _passwordFocused = false;
  bool _emailFocused = false;
  bool _obscureText = true;

  @override
  void dispose() {
    _passwordNode.dispose();
    _emailNode.dispose();
    super.dispose();
  }

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
              Text(
                "Get back in the driver's seat. Sign in to regain control.",
                style: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text90(TimeBoxingColorType.shade)),
              ),
              const SizedBox(
                height: 69,
              ),
              GestureDetector(
                onTap: null,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                      color: TimeBoxingColors.neutralWhite(),
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                          color: TimeBoxingColors.secondary80(
                              TimeBoxingColorType.shade),
                          width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'icon/google-icon.svg',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Sign in with Google',
                        style: TimeBoxingTextStyle.headline4(
                            TimeBoxingFontWeight.bold,
                            TimeBoxingColors.primary70(
                                TimeBoxingColorType.shade)),
                      )
                    ],
                  ),
                ),
              ),
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
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_emailNode.hasFocus) {
                        _emailNode
                            .unfocus(); // Remove focus if the container is already focused
                      } else {
                        _emailNode
                            .requestFocus(); // Request focus when tapping the container
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: TimeBoxingColors.primary30(
                                  TimeBoxingColorType.shade),
                              width: _emailNode.hasFocus ? 2 : 0.5)),
                      child: TextField(
                        focusNode: _emailNode,
                        onTap: () {
                          setState(() {
                            _emailFocused = true;
                            _passwordFocused = false;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TimeBoxingTextStyle.paragraph1(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text30(
                                  TimeBoxingColorType.tint)),
                          floatingLabelStyle: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text20(
                                  TimeBoxingColorType.tint)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_passwordNode.hasFocus) {
                        _passwordNode
                            .unfocus(); // Remove focus if the container is already focused
                      } else {
                        _passwordNode
                            .requestFocus(); // Request focus when tapping the container
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: TimeBoxingColors.primary30(
                                  TimeBoxingColorType.shade),
                              width: _passwordNode.hasFocus ? 2 : 0.5)),
                      child: TextFormField(
                        focusNode: _passwordNode,
                        onTap: () {
                          setState(() {
                            _passwordFocused = true;
                            _emailFocused = false;
                          });
                        },
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              icon: _obscureText
                                  ? Icon(Icons.visibility_off,
                                      color: TimeBoxingColors.text90(
                                          TimeBoxingColorType.shade))
                                  : Icon(Icons.visibility,
                                      color: TimeBoxingColors.text90(
                                          TimeBoxingColorType.shade)),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              }),
                          labelStyle: TimeBoxingTextStyle.paragraph1(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text30(
                                  TimeBoxingColorType.tint)),
                          floatingLabelStyle: TimeBoxingTextStyle.paragraph3(
                              TimeBoxingFontWeight.regular,
                              TimeBoxingColors.text20(
                                  TimeBoxingColorType.tint)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: TimeBoxingColors.primary30(
                            TimeBoxingColorType.shade),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TimeBoxingTextStyle.headline4(
                                TimeBoxingFontWeight.bold,
                                TimeBoxingColors.neutralWhite()),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
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
