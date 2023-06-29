import 'package:flutter/cupertino.dart';
import 'package:timeboxing/Scenes/Page/HomePage/home_page.dart';

class TabBarItem {
  IconData iconData;
  String title;
  Widget page;

  TabBarItem({
    required this.iconData,
    required this.title,
    required this.page,
  });
}

final List<TabBarItem> tabItems = [
  TabBarItem(
    iconData: CupertinoIcons.home,
    title: 'Home',
    page: const HomePage(),
  ),
  TabBarItem(
    iconData: CupertinoIcons.create,
    title: 'Creation',
    page: Container(),
  ),
  TabBarItem(
    iconData: CupertinoIcons.calendar,
    title: 'Calendar',
    page: Container(),
  ),
  TabBarItem(
    iconData: CupertinoIcons.person,
    title: 'profile',
    page: Container(),
  )
];

class CupertinoTabBarApp extends StatefulWidget {
  const CupertinoTabBarApp({super.key});

  @override
  State<CupertinoTabBarApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CupertinoTabBarApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: tabItems.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.iconData),
            label: item.title,
          );
        }).toList(),
      ),
      tabBuilder: (BuildContext context, int index) {
        return tabItems[index].page;
      },
    );
  }
}
