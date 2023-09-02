import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_banner.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_recomanded_container.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_sale_row.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_savings.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GroceryHomeScreen extends StatefulWidget {
  const GroceryHomeScreen({super.key});

  @override
  State<GroceryHomeScreen> createState() => _GroceryHomeScreenState();
}

class _GroceryHomeScreenState extends State<GroceryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GroceryBanner(),
            GrocerySaleRow(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Recomended",
                style: TextStyle(
                    color: Color(0xff1E222B),
                    fontSize: 30,
                    fontFamily: CustomFontFamily.regular),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children:
                      List.generate(5, (index) => GroceryRecomendedContainer()),
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Transform.rotate(
                    angle: 6.2,
                    child: Image.asset(
                      "assets/images/savings back/Ellipse 1547.jpg",
                    ),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 35,
                  child: Image.asset(
                    "assets/images/savings back/Ellipse 1546.jpg",
                  ),
                ),
                Positioned(
                  left: 172,
                  top: 132,
                  child: Image.asset(
                    "assets/images/savings back/Ellipse 1548.jpg",
                  ),
                ),
                Positioned(
                  left: 375,
                  top: 80,
                  child: Image.asset(
                    "assets/images/savings back/Ellipse 1549.jpg",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: GrocerySavings(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Deals on Fruits & Tea",
                style: TextStyle(
                    color: Color(0xff1E222B),
                    fontSize: 30,
                    fontFamily: CustomFontFamily.regular),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
