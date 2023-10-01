import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:form_with_firebase/customWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
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
                    top: -40,
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
                    top: -30,
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
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 10,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 150),
                        height: 500,
                        decoration: BoxDecoration(
                          color: customgrey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 4,
                                color: Colors.grey)
                          ],
                        ),
                        child: Column(
                          children: [
                            TextField(
                              autofocus: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Image(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/login image.png")),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
