import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:form_with_firebase/Screens/login/Screen/login_screen.dart';
import 'package:form_with_firebase/Screens/signup/Widget/signupbutton.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return users
        .add({
          'full_name': "", // John Doe
          'company': "", // Stokes and Sons
          'age': "" // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
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
                  right: -90,
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
                  left: -8,
                  top: -44,
                  child: Transform.rotate(
                    angle: 0.27,
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
                  top: 45,
                  right: 130,
                  child: Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inriaSerif(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(-1.0, 3.0),
                          ),
                        ]),
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Form(
                        child: ListView(
                          children: [
                            SizedBox(
                              height: 10,
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
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                labelText: "Phone",
                                labelStyle: GoogleFonts.inriaSerif(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: passwordController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: "Password",
                                labelStyle: GoogleFonts.inriaSerif(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: "Confirm Password",
                                labelStyle: GoogleFonts.inriaSerif(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            SignupButton(
                              emialController: emialController,
                              passwordController: passwordController,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Wrap(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Already have an Account ?",
                                      style: GoogleFonts.inriaSerif(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            ));
                                      },
                                      child: Text(
                                        "Login",
                                        style: GoogleFonts.inriaSerif(
                                            color: Colors.blue[900],
                                            fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  child: Image(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/signup image.png")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
