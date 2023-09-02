// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GroceryRecomendedContainer extends StatelessWidget {
  const GroceryRecomendedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 194,
        width: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 5,
                  offset: Offset(-2, 3))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 8),
                child: Image.asset(
                  MyImages.photoImage,
                  height: 68,
                  width: 68,
                  color: Color(0xffA1ABC0),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffE0E2EE), width: 1))),
            ),
            Container(
              height: 65,
              child: ListTile(
                title: Text("Lemonade"),
                subtitle: Text("Lemonade"),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text("Unit"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("\$15"),
                    Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            backgroundColor: AllColors.primarycolor,
                            radius: 14,
                            child: Icon(Icons.add)))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
