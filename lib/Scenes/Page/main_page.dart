import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Widget/bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TimeboxingBottomNavigationBar(),
      body: Container(
        alignment: Alignment.center,
        child: const Text('Galih kontol kecil'),
      ),
    );
  }
}
