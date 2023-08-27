import 'package:flutter/material.dart';

import 'home_screen.dart';

class TextScreen extends StatelessWidget {
  int index;
  TextScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text(car[index]["details"]))),
    );
  }
}
