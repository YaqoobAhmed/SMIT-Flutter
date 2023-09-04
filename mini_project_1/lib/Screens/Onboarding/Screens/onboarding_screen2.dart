import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Screens/grocery_home_screen.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_heading_text.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_nav_style.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_sub_text.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

import '../Widgets/onboard_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                        data: "Your holiday shopping delivered to Screen two"),
                    Spacer(),
                    OnboardSubText(
                        data:
                            "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2"),
                  ],
                ),
              ),
            ),
            Positioned(top: 346, left: 42, child: OnboardNavStyleDark()),
            Positioned(top: 345, left: 78, child: OnboardNavStyleLight()),
            Positioned(
                top: 390,
                left: 70,
                child: Center(
                  child: Image.asset(
                    "assets/images/ecommerce-checkout-laptop-concept-illustration/6479017.jpg",
                    width: 230,
                    height: 210,
                  ),
                )),
            Positioned(
              top: 640,
              left: 61,
              child: OnboardButton(
                data: "Get Started",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GroceryHomeScreen(),
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
