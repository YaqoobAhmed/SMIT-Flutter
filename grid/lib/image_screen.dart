// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grid/text_screen.dart';

import 'home_screen.dart';

class ImageScreen extends StatelessWidget {
  late var index;
  ImageScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TextScreen(index: index),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(car[index]["image"]),
              const Text(
                "Tap For more Info",
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
              )
            ],
          )),
    );
  }
}
