import 'package:flutter/material.dart';
import 'package:state_full_practice/Theme/dark_theme.dart';
import 'package:state_full_practice/Theme/light_theme.dart';
import 'state_full_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}
