import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Onboarding/Screens/onboarding_screen1.dart';
import 'package:mini_project_1/Screens/Onboarding/Screens/onboarding_screen2.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [Onboarding1(), Onboarding2()],
      ),
    );
  }
}
