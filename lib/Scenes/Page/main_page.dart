import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/home_page.dart';
import 'package:timeboxing/Shared/Widget/cupertino.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.fromLTRB(0, 24, 0, 0),
        child: CupertinoTabBarApp(),
      ),
      body: HomePage(),
    );
  }
}
