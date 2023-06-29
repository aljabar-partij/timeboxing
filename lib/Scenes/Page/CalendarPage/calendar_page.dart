import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Calendar Page'),
    );
  }
}
