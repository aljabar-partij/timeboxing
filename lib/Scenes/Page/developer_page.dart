import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/OnboardingPage/Component/onboarding_page_1.dart';
import 'package:timeboxing/Scenes/Page/main_page.dart';
import 'shared_design_page.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SharedDesignPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Shared Design Page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MainPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Main Page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const OnboardingPage1();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Onboarding Page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
