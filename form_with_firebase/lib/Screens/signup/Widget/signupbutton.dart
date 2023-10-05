import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_with_firebase/Screens/Home/Screen/home_screen.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupButton extends StatelessWidget {
  final TextEditingController emialController, passwordController;
  const SignupButton(
      {super.key,
      required this.emialController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    registerUser() async {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emialController.text, password: passwordController.text);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
            (route) => false);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    return GestureDetector(
      onTap: () {
        registerUser();
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: customMaincolor, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Signup",
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
