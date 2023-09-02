import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GrocerySavings extends StatelessWidget {
  const GrocerySavings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 123,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffFFC83A),
          ),
          child: SizedBox(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "346",
                    style: TextStyle(
                      color: AllColors.BottonTextColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Manrope",
                    ),
                  ),
                  Text(" "),
                  Text(
                    "USD",
                    style: TextStyle(
                      color: AllColors.BottonTextColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Manrope",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Total Savings",
                    style: TextStyle(
                      color: AllColors.BottonTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope",
                    ),
                  )
                ],
              )
            ],
          )),
        ),
        Container(
          height: 123,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffE4DDCB),
          ),
          child: SizedBox(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "215",
                    style: TextStyle(
                      color: AllColors.BottonTextColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Manrope",
                    ),
                  ),
                  Text(" "),
                  Text(
                    "HRS",
                    style: TextStyle(
                      color: AllColors.BottonTextColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Manrope",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Time Saved",
                    style: TextStyle(
                      color: AllColors.BottonTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Manrope",
                    ),
                  )
                ],
              )
            ],
          )),
        )
      ],
    );
  }
}
