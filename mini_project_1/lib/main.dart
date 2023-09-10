import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Screens/grocery_home_screen.dart';
import 'package:mini_project_1/Screens/Splash/splash_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mini Project",
      home: SplashScreen(),
      //home: GroceryHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
