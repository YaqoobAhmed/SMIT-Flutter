import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_banner.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_sale_row.dart';
import 'package:mini_project_1/Screens/Widgets/colors.dart';

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
            Text(
              "Recomandation",
              style: TextStyle(
                  color: Color(0xff1E222B),
                  fontSize: 30,
                  fontFamily: CustomFontFamily.regular),
            ),
            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   itemCount: 2,
            //   itemBuilder: (context, index) => Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.amber,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
