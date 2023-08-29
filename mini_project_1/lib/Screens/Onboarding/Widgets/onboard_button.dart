import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/colors.dart';

class OnboardButton extends StatelessWidget {
  final void Function()? onPressed;
  OnboardButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 253,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AllColors.ButtonBackgroundColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        20)))), //for shaping the corner of the botton
            onPressed: onPressed,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        color: AllColors.BottonTextColor,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: AllColors.BottonTextColor,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
