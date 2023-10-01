import 'package:flutter/material.dart';
import 'package:form_with_firebase/customWidget.dart';

class StartScreenButton extends StatelessWidget {
  final Color buttonColor, textColor;
  final String text;
  final Function()? onTap;
  const StartScreenButton({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: customMaincolor, width: 3)),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
