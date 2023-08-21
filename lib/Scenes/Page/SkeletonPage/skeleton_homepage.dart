import 'package:flutter/material.dart';

class SkeletonPage extends StatefulWidget {
  const SkeletonPage({super.key});

  @override
  State<SkeletonPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SkeletonPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
