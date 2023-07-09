import 'package:flutter/material.dart';
import 'component/onboarding_page_one.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnboardingPageOne()),
    );
  }
}
