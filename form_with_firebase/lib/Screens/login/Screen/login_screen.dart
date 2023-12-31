import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_with_firebase/Screens/Home/Screen/home_screen.dart';
import 'package:form_with_firebase/Screens/login/Widget/loginbutton.dart';
import 'package:form_with_firebase/Screens/signup/Screen/signup_screen.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true, isLogingIn = false;
  loginUser() async {
    try {
      isLogingIn = true;
      setState(() {});

      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emialController.text, password: passwordController.text);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
          (route) => false);
    } on FirebaseAuthException catch (e) {
      isLogingIn = false;
      setState(() {});
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  top: -30,
                  left: -50,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                          color: customgrey,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 3,
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(180)),
                    ),
                  ),
                ),
                Positioned(
                  left: -8,
                  top: -44,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                          color: customMaincolor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 3,
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ),
                ),
                Positioned(
                  right: -40,
                  top: -34,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                          color: customgrey,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(3, 0))
                          ],
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 140,
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inriaSerif(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Positioned(
                  top: 150,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: customgrey,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 7, spreadRadius: 4, color: Colors.grey)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: emialController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              labelText: "Email",
                              labelStyle: GoogleFonts.inriaSerif(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: obscureText,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  obscureText = !obscureText;
                                  setState(() {});
                                },
                                child: obscureText
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                      ),
                              ),
                              icon: Icon(Icons.lock),
                              labelText: "Password",
                              labelStyle: GoogleFonts.inriaSerif(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 110,
                          ),
                          new LoginButton(
                            emialController: emialController,
                            passwordController: passwordController,
                            onTap: () {
                              loginUser();
                            },
                          ),
                          Visibility(
                              visible: isLogingIn,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child:
                                    Center(child: CircularProgressIndicator()),
                              )),
                          Visibility(
                            visible: !isLogingIn,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Wrap(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Don't have an Account ?",
                                      style: GoogleFonts.inriaSerif(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SignupScreen(),
                                            ));
                                      },
                                      child: Text(
                                        "SignUp",
                                        style: GoogleFonts.inriaSerif(
                                            color: Colors.blue[900],
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  child: Image(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/login image.png")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
