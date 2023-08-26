import 'package:flutter/material.dart';

import 'home_screen.dart';

class ImageScreen extends StatelessWidget {
  late var index;
  ImageScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(car[index]["image"]),
      ),
    );
  }
}
