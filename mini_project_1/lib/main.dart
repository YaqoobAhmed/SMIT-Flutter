import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Screens/grocery_home_screen.dart';
import 'package:mini_project_1/Screens/Splash/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mini Project",
      //home: GroceryHomeScreen(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
