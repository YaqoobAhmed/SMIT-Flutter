import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Onboarding/Screens/onboarding_screen1.dart';
import 'package:mini_project_1/Screens/Onboarding/Screens/onboarding_screen2.dart';
import 'package:mini_project_1/Screens/Onboarding/Widgets/onboard_button.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../bottom_navbar.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primarycolor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: PageView(
                controller: _controller,
                //physics: ,
                children: [Onboarding1(), Onboarding2()],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                      dotHeight: 6,
                      dotColor: Color(0xffF8F9FB).withOpacity(0.23),
                      activeDotColor: Color(0xffF8F9FB)),
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "assets/images/ecommerce-checkout-laptop-concept-illustration/6479017.jpg",
                width: 230,
                height: 210,
              ),
            ),
            OnboardButton(
              data: "Get Started",
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
