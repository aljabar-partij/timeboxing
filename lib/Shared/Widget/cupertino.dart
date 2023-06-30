import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/CalendarPage/calendar_page.dart';
import 'package:timeboxing/Scenes/Page/CreationPage/creation_page.dart';
import 'package:timeboxing/Scenes/Page/HomePage/home_page.dart';
import 'package:timeboxing/Scenes/Page/ProfilePage/profile_page.dart';
import 'package:timeboxing/Shared/Extension/colors_style_extension.dart';

class TabBarItem {
  IconData iconData;
  String title;
  Widget page;
  Color iconColor;

  TabBarItem({
    required this.iconData,
    required this.title,
    required this.page,
    required this.iconColor,
  });
}

class CupertinoTabBarApp extends StatefulWidget {
  const CupertinoTabBarApp({super.key});

  @override
  State<CupertinoTabBarApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CupertinoTabBarApp> {
  final List<TabBarItem> _tabItems = [
    TabBarItem(
      iconData: CupertinoIcons.home,
      title: 'Home',
      page: const HomePage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    ),
    TabBarItem(
      iconData: CupertinoIcons.create,
      title: 'Creation',
      page: const CreationPage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    ),
    TabBarItem(
      iconData: CupertinoIcons.calendar,
      title: 'Calendar',
      page: const CalendarPage(),
      iconColor: TimeBoxingColors.primary50(TimeBoxingColorType.shade),
    ),
    TabBarItem(
      iconData: CupertinoIcons.person,
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
            icon: Icon(
              item.iconData,
              color: item.iconColor,
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
