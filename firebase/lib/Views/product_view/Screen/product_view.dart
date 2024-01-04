import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 60),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                                color: blueColor,
                                spreadRadius: 2,
                                blurRadius: 22,
                                offset: Offset(-4, 4))
                          ],
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Parrotgreen.jpeg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ]),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0.1,
                                blurRadius: 10,
                                color: blueColor)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Parrot",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 26),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Breed: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "Cross",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal))
                                  ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Age: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "1.2",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal))
                                  ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Description: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text:
                                            " creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal))
                                  ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Address: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "hjkhjhjkhjkhjhj",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal))
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Price: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: blueColor,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Center(
                                      child: Text(
                                    "Contact",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
