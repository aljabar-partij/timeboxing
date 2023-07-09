import 'package:flutter/material.dart';

// Dummy Page
class CreationPage extends StatefulWidget {
  const CreationPage({super.key});

  @override
  State<CreationPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CreationPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('This is Creation Page'),
    );
  }
}
