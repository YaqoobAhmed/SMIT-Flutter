import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_heading_text.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_sub_text.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primarycolor,
      body: const SafeArea(
        child: SizedBox(
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
    );
  }
}
