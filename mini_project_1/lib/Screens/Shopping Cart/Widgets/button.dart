import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class CustomCartButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const CustomCartButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 327,
        decoration: BoxDecoration(
            color: AllColors.primarycolor,
            borderRadius: BorderRadius.circular(20)),
        child: Align(
          child: Text(
            text,
            style: TextStyle(
                color: AllColors.ButtonBackgroundColor,
                fontSize: 14,
                fontFamily: "Manrope",
                fontWeight: FontWeight.w600,
                wordSpacing: 2),
          ),
        ),
      ),
    );
  }
}
