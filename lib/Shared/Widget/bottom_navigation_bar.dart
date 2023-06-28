import 'package:flutter/material.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

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
      selectedIconTheme: IconThemeData(
          color: TimeBoxingColors.primary50(
        TimeBoxingColorType.shade,
      )),
      selectedItemColor: TimeBoxingColors.text(
        TimeBoxingColorType.tint,
      ),
      unselectedItemColor: TimeBoxingColors.text(
        TimeBoxingColorType.tint,
      ),
      items: [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
            )),
        BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.calendar_month,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
            )),
        BottomNavigationBarItem(
            label: 'Create',
            icon: Icon(
              Icons.create,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
            )),
        BottomNavigationBarItem(
            label: 'Love',
            icon: Icon(
              Icons.favorite,
              color: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
            ))
      ],
    );
  }
}
