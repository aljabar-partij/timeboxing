import 'package:flutter/material.dart';

// Dummy Page
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Profile Page'),
    );
  }
}
