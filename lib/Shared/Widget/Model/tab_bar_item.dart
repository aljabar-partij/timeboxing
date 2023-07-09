import 'package:flutter/material.dart';

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
