import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class OnboardHeadingText extends StatelessWidget {
  final String data;
  const OnboardHeadingText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: AllColors.HeadingTextColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        fontFamily: "Manrope",
      ),
    );
  }
}
