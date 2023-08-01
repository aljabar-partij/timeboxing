import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _usernameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  bool _passwordFocused = false;
  bool _usernameFocused = false;
  bool _emailFocused = false;
  bool _obscureText = true;
  @override
  void dispose() {
    _passwordNode.dispose();
    _usernameNode.dispose();
    _emailNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (_usernameNode.hasFocus) {
              _usernameNode
                  .unfocus(); // Remove focus if the container is already focused
            } else {
              _usernameNode
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
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                    width: _usernameNode.hasFocus ? 2 : 0.5)),
            child: TextField(
              focusNode: _usernameNode,
              onTap: () {
                setState(() {
                  _usernameFocused = true;
                  _passwordFocused = false;
                  _emailFocused = false;
                });
              },
              decoration: InputDecoration(
                labelText: "Name",
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
            if (_usernameNode.hasFocus) {
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
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                    width: _emailNode.hasFocus ? 2 : 0.5)),
            child: TextField(
              focusNode: _emailNode,
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
                    color:
                        TimeBoxingColors.primary30(TimeBoxingColorType.shade),
                    width: _passwordNode.hasFocus ? 2 : 0.5)),
            child: TextFormField(
              focusNode: _passwordNode,
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
          onTap: null,
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
    ));
  }
}
