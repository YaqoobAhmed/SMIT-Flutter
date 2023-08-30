import 'package:flutter/material.dart';

class OnboardNavStyleDark extends StatelessWidget {
  const OnboardNavStyleDark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 4,
      decoration: BoxDecoration(
          color: Color(0xffF8F9FB).withOpacity(0.23),
          borderRadius: BorderRadius.circular(4)),
    );
  }
}

class OnboardNavStyleLight extends StatelessWidget {
  const OnboardNavStyleLight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 4,
      decoration: BoxDecoration(
          color: Color(0xffF8F9FB), borderRadius: BorderRadius.circular(4)),
    );
  }
}
