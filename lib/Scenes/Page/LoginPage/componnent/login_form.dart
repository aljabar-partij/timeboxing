import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/modelComponent/login_form_cubit.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  bool _passwordFocused = false;
  bool _emailFocused = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (_emailNode.hasFocus) {
              _emailNode.unfocus();
            } else {
              _emailNode.requestFocus();
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
              controller: _emailController,
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
              _passwordNode.unfocus();
            } else {
              _passwordNode.requestFocus();
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
              controller: _passwordController,
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
                    TimeBoxingColors.text30(TimeBoxingColorType.tint)),
                floatingLabelStyle: TimeBoxingTextStyle.paragraph3(
                    TimeBoxingFontWeight.regular,
                    TimeBoxingColors.text20(TimeBoxingColorType.tint)),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        BlocBuilder<LoginFormCubit, LoginFormState>(
          builder: (context, state) {
            if (state.erroLogin) {
              return Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        color: TimeBoxingColors.secondary50(
                            TimeBoxingColorType.shade),
                      ),
                      Text(
                        'The username or password you entered is incorrect.',
                        style: TimeBoxingTextStyle.paragraph4(
                            TimeBoxingFontWeight.regular,
                            TimeBoxingColors.secondary60(
                                TimeBoxingColorType.shade)),
                      ),
                    ],
                  ),
                ],
              );
            }
            return Container();
          },
        ),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
            onTap: null,
            child: Text(
              'Forgot Your Password?',
              style: TimeBoxingTextStyle.paragraph3(TimeBoxingFontWeight.bold,
                  TimeBoxingColors.primary60(TimeBoxingColorType.shade)),
            )),
        const SizedBox(
          height: 24,
        ),
        GestureDetector(
          onTap: () {
            context
                .read<LoginFormCubit>()
                .loginPressed(_emailController.text, _passwordController.text);
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
