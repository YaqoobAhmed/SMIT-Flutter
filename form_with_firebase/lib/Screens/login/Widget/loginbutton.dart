import 'package:flutter/material.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
