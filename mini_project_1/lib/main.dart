import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Onboarding/onboarding_screen1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mini Project",
      home: Onboarding1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
