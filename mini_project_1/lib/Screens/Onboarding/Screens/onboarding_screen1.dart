import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_heading_text.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_nav_style.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_sub_text.dart';
import 'package:mini_project_1/Screens/Widgets/colors.dart';

import '../Widgets/onboard_button.dart';
import 'onboarding_screen2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primarycolor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 33,
              left: 42,
              child: Container(
                width: (294),
                height: (269),
                child: Column(
                  children: [
                    OnboardHeadingText(
                        data: "Your holiday shopping delivered to Screen one"),
                    Spacer(),
                    OnboardSubText(
                        data:
                            "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1"),
                  ],
                ),
              ),
            ),
            Positioned(top: 347, left: 42, child: OnboardNavStyleDark()),
            Positioned(top: 345, left: 78, child: OnboardNavStyleLight()),
            Positioned(
                top: 430,
                left: 123,
                child: Icon(
                  Icons.photo_album_outlined,
                  color: AllColors.SubTextColor,
                  weight: 1,
                  size: 129,
                )),
            Positioned(
              top: 640,
              left: 61,
              child: OnboardButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Onboarding2(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
