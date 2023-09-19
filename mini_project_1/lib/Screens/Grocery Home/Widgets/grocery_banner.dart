import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/searchbar.dart';
import 'package:mini_project_1/Screens/Shopping%20Cart/Screens/cart_screen.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GroceryBanner extends StatelessWidget {
  const GroceryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: AllColors.primarycolor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.5, horizontal: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey, Yaqoob",
                    style: TextStyle(
                      color: AllColors.HeadingTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Manrope",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ));
                    },
                    child: Stack(children: [
                      Container(
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: AllColors.HeadingTextColor,
                          size: 33,
                        ),
                      ),
                      if (cartData.isNotEmpty)
                        Positioned(
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AllColors.secondPrimary,
                            child: Text(
                              cartData.length.toString(),
                              style: TextStyle(
                                  color: AllColors.ButtonBackgroundColor),
                            ),
                          ),
                        ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
              top: 100, left: 20, right: 20, child: GrocerySearchbar()),
          Positioned(
            top: 180,
            left: 20,
            right: 20,
            child: Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "DELIVERY TO",
                      style: TextStyle(
                        color: AllColors.SubTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Manrope",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Text(
                        "WITHIN",
                        style: TextStyle(
                          color: AllColors.SubTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Manrope",
                        ),
                      ),
                    )
                  ],
                ), // for lighter text

                Row(
                  children: [
                    Text(
                      "R-578 blk 14 fb Area",
                      style: TextStyle(
                        color: AllColors.HeadingTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Manrope",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Container(
                              height: 50,
                              width: 20,
                              color: Colors.white,
                              child: const Center(
                                child: Text(
                                  "No Other Options",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AllColors.HeadingTextColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "30 Min",
                      style: TextStyle(
                        color: AllColors.HeadingTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Manrope",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Container(
                              height: 50,
                              width: 20,
                              color: Colors.white,
                              child: const Center(
                                child: Text(
                                  "No Other Options",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: AllColors.HeadingTextColor,
                        opticalSize: 56,
                      ),
                    ),
                  ],
                ) //for darker text
              ],
            )),
          ),
        ]),
      ],
    );
  }
}
