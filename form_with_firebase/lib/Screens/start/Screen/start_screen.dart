import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_with_firebase/Screens/login/Screen/login_screen.dart';
import 'package:form_with_firebase/Screens/signup/Screen/signup_screen.dart';
import 'package:form_with_firebase/Screens/start/Widget/start_screen_button.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emialController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Image(
              width: 280,
              height: 380,
              image: AssetImage(
                "assets/images/young boys and young girl jumping.png",
              ),
            ),
            Text("Welcome",
                style: GoogleFonts.playfairDisplay(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text(
                "DigiSync Labs is a Tech Company which Provide Web Design & Development, Mobile App Developement, Wordpress & Shopify Developement, Graphis Designing, UI/UX & Logo Designing and SEO",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            StartScreenButton(
              buttonColor: customMaincolor,
              text: "Create an Account",
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ));
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            StartScreenButton(
              buttonColor: Colors.white,
              text: "Login",
              textColor: customMaincolor,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
            ),
          ],
        ),
      )),
    );
  }
}
