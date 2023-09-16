import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FavouriteBox extends StatelessWidget {
  final String title, weight;
  final num price;
  final String image;
  final bool isFavourited;
  final Function()? onPressed_fav;
  final Function()? onPressed_cart;
  FavouriteBox({
    super.key,
    required this.title,
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
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.height * 0.23,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: onPressed_fav,
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                            color: AllColors.secondPrimary,
                          )),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "\$ $price",
                          style: TextStyle(
                            color: const Color(0xff2A4BA0),
                            height: 1.6,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: CustomFontFamily.bold,
                          ),
                        ),
                        TextSpan(
                          text: "/$weight",
                          style: TextStyle(
                            color: const Color(0xff2A4BA0),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: CustomFontFamily.regular,
                          ),
                        )
                      ])),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                            backgroundColor: AllColors.primarycolor,
                            radius: 14,
                            child: Icon(Icons.add)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
