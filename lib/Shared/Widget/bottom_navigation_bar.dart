import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/text_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';

class TimeboxingBottomNavigationBar extends StatefulWidget {
  const TimeboxingBottomNavigationBar({super.key});

  @override
  State<TimeboxingBottomNavigationBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TimeboxingBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedLabelStyle: TimeBoxingTextStyle.paragraph5(
        TimeBoxingFontWeight.bold,
        TimeBoxingColors.text(TimeBoxingColorType.tint),
      ),
      unselectedLabelStyle: TimeBoxingTextStyle.paragraph5(
        TimeBoxingFontWeight.bold,
        TimeBoxingColors.text(TimeBoxingColorType.tint),
      ),
      items: const [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                TimeboxingIcons.home,
                color: Colors.black,
                size: 16,
              ),
            )),
        BottomNavigationBarItem(
            label: 'Creation',
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                TimeboxingIcons.penCircle,
                color: Colors.black,
                size: 16,
              ),
            )),
        BottomNavigationBarItem(
            label: 'Calendar',
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                TimeboxingIcons.calendar,
                color: Colors.black,
                size: 16,
              ),
            )),
        BottomNavigationBarItem(
            label: 'Profile',
            icon: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                TimeboxingIcons.person,
                color: Colors.black,
                size: 16,
              ),
            )),
      ],
    );
  }
}
