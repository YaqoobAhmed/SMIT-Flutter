import 'package:firebase/Views/Onboarding/Widget/onboard_container.dart';
import 'package:firebase/Views/buy/Screen/buy.dart';
import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      NetworkImage("https://funmauj.b-cdn.net/test/358016.jpg"),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                OnboardContainer(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyScreen(),
                      )),
                  icon: Icon(
                    Icons.shopping_bag,
                    color: whiteColor,
                    size: 42.5,
                  ),
                  text: 'Buy',
                ),
                OnboardContainer(
                  icon: Icon(
                    Icons.sell,
                    color: whiteColor,
                    size: 42.5,
                  ),
                  text: 'Sell',
                ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnboardContainer(
                    icon: Icon(
                      Icons.camera_alt,
                      color: whiteColor,
                      size: 42.5,
                    ),
                    text: 'Scan',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
