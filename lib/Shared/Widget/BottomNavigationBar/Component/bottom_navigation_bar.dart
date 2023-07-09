import 'package:flutter/cupertino.dart';
import 'package:timeboxing/Scenes/Page/CalendarPage/calendar_page.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/creation_page.dart';
import 'package:timeboxing/Scenes/Page/HomePage/home_page.dart';
import 'package:timeboxing/Scenes/Page/ProfilePage/profile_page.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';
import 'package:timeboxing/Shared/Extension/icons_style_extension.dart';
import 'package:timeboxing/Shared/Widget/BottomNavigationBar/Model/tab_bar_item.dart';

class TimeboxingBottomNavigationBar extends StatefulWidget {
  const TimeboxingBottomNavigationBar({super.key});

  @override
  State<TimeboxingBottomNavigationBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TimeboxingBottomNavigationBar> {
  final List<TabBarItem> _tabItems = [
    TabBarItem(
      iconData: TimeboxingIcons.home,
      title: 'Home',
      page: const HomePage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    ),
    TabBarItem(
      iconData: TimeboxingIcons.plusCircle,
      title: 'Creation',
      page: const CreationPage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    ),
    TabBarItem(
      iconData: TimeboxingIcons.calendar,
      title: 'Calendar',
      page: const CalendarPage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    ),
    TabBarItem(
      iconData: TimeboxingIcons.person,
      title: 'profile',
      page: const ProfilePage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        inactiveColor: TimeBoxingColors.text(TimeBoxingColorType.tint),
        activeColor: TimeBoxingColors.text(TimeBoxingColorType.tint),
        items: _tabItems.map((item) {
          return BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                item.iconData,
                color: item.iconColor,
                size: 16,
              ),
            ),
            label: item.title,
          );
        }).toList(),
      ),
      tabBuilder: (BuildContext context, int index) {
        return _tabItems[index].page;
      },
    );
  }
}
