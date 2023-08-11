import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/login_page.dart';

// Dummy Page
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfilePage> {
  void HandleLogoutButton() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          HandleLogoutButton();
        },
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.blue,
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
