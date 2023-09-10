// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/recomended_data.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GroceryRecomendedContainer extends StatelessWidget {
  final index;
  GroceryRecomendedContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 194,
        width: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
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
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(redomended_data[index]['image']),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                )),
            SizedBox(
              height: 65,
              child: ListTile(
                title: Text(redomended_data[index]['title']),
                subtitle: Text(redomended_data[index]['subtitle']),
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
                    Text("\$${redomended_data[index]['price']}"),
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
