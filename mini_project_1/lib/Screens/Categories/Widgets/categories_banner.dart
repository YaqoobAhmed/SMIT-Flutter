import 'package:flutter/material.dart';
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
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    color: Color(0xffF8F9FB),
                    size: 28,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xffF8F9FB),
                    size: 28,
                  ),
                ),
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
