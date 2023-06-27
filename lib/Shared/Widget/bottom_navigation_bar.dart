import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';

class TimeboxingBottomNavigationBar extends StatefulWidget {
  const TimeboxingBottomNavigationBar({super.key});

  @override
  State<TimeboxingBottomNavigationBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TimeboxingBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedLabelStyle:
          TimeBoxingTextStyle.paragraph5(TimeBoxingFontWeight.bold),
      unselectedLabelStyle:
          TimeBoxingTextStyle.paragraph5(TimeBoxingFontWeight.bold),
      items: const [
        BottomNavigationBarItem(
            label: 'Home', icon: Icon(Icons.home, color: Colors.black)),
        BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.calendar_month, color: Colors.black)),
        BottomNavigationBarItem(
            label: 'Create', icon: Icon(Icons.create, color: Colors.black))
        // BottomNavigationBarItem(
        //     label: 'Love', icon: Icon(Icons.favorite, color: Colors.black))
      ],
    );
  }
}
