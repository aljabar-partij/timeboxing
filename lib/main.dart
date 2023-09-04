import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/login_page.dart';
import 'package:timeboxing/Scenes/Page/LoginPage/modelComponent/login_form_cubit.dart';
import 'package:timeboxing/Scenes/Page/OnboardingPage/Component/onboarding_page_1.dart';
import 'package:timeboxing/Scenes/Page/OnboardingPage/cubit/on_boarding_page_cubit.dart';
import 'package:timeboxing/Scenes/Page/developer_page.dart';
import 'package:timeboxing/Scenes/Page/main_page.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum NavigationPage { sharedDesign, main }

void main() async {
  /// Do not remove this code below!!!
  WidgetsFlutterBinding.ensureInitialized();

  /// Do not remove this code below!!!
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingpageCubit()..mainFirst(),
      child: BlocBuilder<OnboardingpageCubit, OnBoardingPageState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          } else{
            if (state.isFreshInstall) {
              return const MaterialApp(
                home: OnboardingPage1(),
              );
            }
          }
          return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const MaterialApp(
                    home: MainPage(),
                  );
                }
                return const MaterialApp(
                  home: LoginPage(),
                );
              });
        },
      ),
    );
  }
}
