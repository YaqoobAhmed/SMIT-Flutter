import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(titleSmall: TextStyle(color: Colors.white)),
  colorScheme: ColorScheme.dark(
      onPrimary: Colors.white,
      background: Color(0xff424851),
      primary: Color(0xff181A20),
      secondary: Colors.grey.shade800,
      primaryContainer: Color.fromARGB(36, 165, 214, 167)),
);

//#181A20