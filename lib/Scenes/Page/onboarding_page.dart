import 'package:flutter/material.dart';
import 'package:timeboxing/Scenes/Page/main_page.dart';
import 'shared_design_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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
                        return const SharedDesignPage();
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
            ],
          ),
        ),
      ),
    );
  }
}
