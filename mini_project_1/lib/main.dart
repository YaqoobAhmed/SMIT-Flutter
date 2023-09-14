import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Screens/categories_screen2.dart';
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
      //home: CategoriesScreen2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
