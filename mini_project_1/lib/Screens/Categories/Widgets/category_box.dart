import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class CategoryBox extends StatelessWidget {
  final String title, subtitle, description, price, weight;
  final Color boxColor;
  final String image;
  const CategoryBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.weight,
    required this.boxColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 167,
            width: 137,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: boxColor),
            child: Center(
              child: Image.asset(
                MyImages.photoImage,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text(
                  title,
                  style: TextStyle(
                    color: AllColors.BottonTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: CustomFontFamily.bold,
                  ),
                )),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xff616A7D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Manrope",
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: const Color(0xff616A7D),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: CustomFontFamily.regular,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "\$$price",
                      style: TextStyle(
                        color: const Color(0xff2A4BA0),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: CustomFontFamily.bold,
                      ),
                    ),
                    Text(
                      "/$weight",
                      style: TextStyle(
                        color: const Color(0xff2A4BA0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: CustomFontFamily.regular,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
