import 'package:flutter/material.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController emialController, passwordController;
  final Function()? onTap;

  LoginButton(
      {super.key,
      required this.emialController,
      required this.passwordController,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: customMaincolor, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: GoogleFonts.inriaSerif(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              width: 10,
            ),
            Image(
              image: AssetImage("assets/images/arrow.png"),
              color: Colors.white,
              height: 27,
            )
          ],
        )),
      ),
    );
  }
}
