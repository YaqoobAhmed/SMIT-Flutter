import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Shopping%20Cart/Screens/cart_screen.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class CategoriesBanner extends StatefulWidget {
  const CategoriesBanner({super.key});

  @override
  State<CategoriesBanner> createState() => _CategoriesBannerState();
}

class _CategoriesBannerState extends State<CategoriesBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: AllColors.primarycolor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 52, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.end,
                  spacing: 20,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                        color: Color(0xffF8F9FB),
                        size: 33,
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
                                "${cartData.length}",
                                style: TextStyle(
                                    color: AllColors.ButtonBackgroundColor),
                              ),
                            ),
                          ),
                      ]),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Shop",
              style: TextStyle(
                color: AllColors.HeadingTextColor,
                fontSize: 50,
                fontWeight: FontWeight.w300,
                fontFamily: "Manrope",
              ),
            ),
            Text(
              "By Category",
              style: TextStyle(
                color: AllColors.HeadingTextColor,
                fontSize: 50,
                fontWeight: FontWeight.w800,
                fontFamily: "Manrope",
              ),
            )
          ],
        ),
      ),
    );
  }
}
