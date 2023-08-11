import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/login_page.dart';
import 'package:timeboxing/Shared/Extension/extension_barrel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _usernameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  bool _passwordFocused = false;
  bool _usernameFocused = false;
  bool _emailFocused = false;
  bool _obscureText = true;

  void _HandleSignUpButton() async {
    try {
      UserCredential signupUser =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

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
                  .unfocus();
            } else {
              _usernameNode
                  .requestFocus(); 
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
              controller: _usernameController,
              focusNode: _usernameNode,
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
            if (_usernameNode.hasFocus) {
              _emailNode
                  .unfocus(); 
            } else {
              _emailNode
                  .requestFocus(); 
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
                  .unfocus(); 
            } else {
              _passwordNode
                  .requestFocus(); 
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
            _HandleSignUpButton();
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
