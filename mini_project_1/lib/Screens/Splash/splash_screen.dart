import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Onboarding/Screens/onboarding_screen.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primarycolor,
      body: Center(
        child: Container(
          child: AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("Mini Project",
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  color: AllColors.HeadingTextColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Manrope",
                ),
                speed: const Duration(milliseconds: 120))
          ]),
        ),
      ),
    );
  }
}
