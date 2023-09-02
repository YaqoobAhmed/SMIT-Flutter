import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class OnboardSubText extends StatelessWidget {
  final String data;
  OnboardSubText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: AllColors.SubTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: "Manrope",
      ),
    );
  }
}
