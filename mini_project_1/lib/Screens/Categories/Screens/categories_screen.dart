import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/categories_banner.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/searchbar.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: CategoriesBanner(),
            ),
            Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                      // crossAxisSpacing: 20,
                      // mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 194,
                            width: 164,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                border:
                                    Border.all(width: 0.3, color: Colors.grey),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 0.5,
                                      blurRadius: 5,
                                      offset: Offset(-2, 3))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          MyImages.photoImage,
                                          color: Color(0xffA1ABC0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "Fishes",
                                    style: TextStyle(
                                      color: AllColors.BottonTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                  Text(
                                    "From Sea",
                                    style: TextStyle(
                                      color: AllColors.BottonTextColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
