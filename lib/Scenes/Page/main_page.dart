import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/home_page.dart';
import 'package:timeboxing/Shared/Widget/BottomNavigationBar/Component/bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: TimeboxingBottomNavigationBar(),
        body: HomePage(),
      ),
    );
  }
}
