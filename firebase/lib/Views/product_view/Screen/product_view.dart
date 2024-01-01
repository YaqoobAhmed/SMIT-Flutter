import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Parrotgreen.jpeg"),
                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    radius: 20,
                    backgroundColor: whiteColor.withOpacity(0.3),
                  ),
                ),
              )
            ]),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "Parrot",
                    style: TextStyle(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
