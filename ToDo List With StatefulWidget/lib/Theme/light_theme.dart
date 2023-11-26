import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(titleSmall: TextStyle(color: Colors.black)),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        onPrimary: Colors.black,
        background: Colors.grey.shade300,
        primary: Color.fromRGBO(7, 172, 70, 1),
        secondary: Colors.green.shade300,
        primaryContainer: Color.fromARGB(166, 165, 214, 167)));
