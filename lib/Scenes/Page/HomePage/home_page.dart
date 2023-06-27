import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/HomePage/Component/greeting_information.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeboxingGreetingInfo(),
        ],
      ),
    );
  }
}
