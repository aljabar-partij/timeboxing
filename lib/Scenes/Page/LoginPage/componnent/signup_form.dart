import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/modelComponent/signup_form_cubit.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  bool _passwordFocused = false;
  bool _usernameFocused = false;
  bool _emailFocused = false;
  bool _obscureText = true;

  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _usernameFocused = true;
            _passwordFocused = false;
            _emailFocused = false;
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                    width: _usernameFocused ? 2 : 0.5)),
            child: TextField(
              controller: _usernameController,
              onTap: () {
                setState(() {
                  _usernameFocused = true;
                  _passwordFocused = false;
                  _emailFocused = false;
                });
              },
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text30(TimeBoxingColorType.tint)),
                floatingLabelStyle: TimeBoxingTextStyle.paragraph3(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text20(TimeBoxingColorType.tint)),
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
            _emailFocused = true;
            _passwordFocused = false;
            _usernameFocused = false;
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                    width: _emailFocused ? 2 : 0.5)),
            child: TextField(
              controller: _emailController,
              onTap: () {
                setState(() {
                  _emailFocused = true;
                  _passwordFocused = false;
                  _usernameFocused = false;
                });
              },
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TimeBoxingTextStyle.paragraph1(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text30(TimeBoxingColorType.tint)),
                floatingLabelStyle: TimeBoxingTextStyle.paragraph3(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text20(TimeBoxingColorType.tint)),
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
            _passwordFocused = true;
            _usernameFocused = false;
            _emailFocused = false;
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                    width: _passwordFocused ? 2 : 0.5)),
            child: TextFormField(
              controller: _passwordController,
              onTap: () {
                setState(() {
                  _passwordFocused = true;
                  _usernameFocused = false;
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
                    TimeBoxingColors.text30(TimeBoxingColorType.tint)),
                floatingLabelStyle: TimeBoxingTextStyle.paragraph3(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text20(TimeBoxingColorType.tint)),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<SignupFormCubit>()
                .signupPressed(_emailController.text, _passwordController.text, _usernameController.text);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: TimeBoxingColors.primary30(TimeBoxingColorType.shade),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TimeBoxingTextStyle.headline4(
                      TimeBoxingFontWeight.bold,
                      TimeBoxingColors.neutralWhite()),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
