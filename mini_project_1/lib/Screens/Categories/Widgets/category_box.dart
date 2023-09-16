import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class CategoryBox extends StatelessWidget {
  final String title, subtitle, weight;
  final num price;
  final String image;
  final bool isFavourited;
  final Function()? onPressed_fav;
  final Function()? onPressed_cart;
  CategoryBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.weight,
    required this.image,
    required this.isFavourited,
    this.onPressed_fav,
    this.onPressed_cart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.215,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AllColors.BottonTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: CustomFontFamily.bold,
                  ),
                ),
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
                  height: 25,
                ),
                Wrap(children: [
                  IconButton(
                    onPressed: onPressed_fav,
                    icon: isFavourited
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    color:
                        isFavourited ? AllColors.secondPrimary : Colors.black,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                          backgroundColor: AllColors.primarycolor,
                          radius: 14,
                          child: Icon(Icons.add)))
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "\$ $price",
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
                    ),
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
