import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: fruit_products.length,
                itemBuilder: (context, index) => CategoryBox(
                  title: fruit_products[index]["title"],
                  subtitle: fruit_products[index]["subtitle"],
                  description: fruit_products[index]["description"],
                  price: fruit_products[index]["price"],
                  weight: fruit_products[index]["weight"],
                  image: fruit_products[index]["image"],
                  // count: fruit_products[index]["count"],
                  // favbool: fruit_products[index]["favourite"],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> fruit_products = [
  {
    "title": "Banana",
    "subtitle": "Fresh from Villages",
    "description": "Starting from",
    "price": 4.75,
    "weight": "Dazan",
    "image": "assets/images/banana.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "WaterMelon",
    "subtitle": "Stored",
    "description": "Starting from",
    "price": 7.49,
    "weight": "KG",
    "image": "assets/images/watermellon.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Apple",
    "subtitle": "Fresh from Villages",
    "description": "Starting from",
    "price": 5.29,
    "weight": "KG",
    "image": "assets/images/apple.jpeg",
    "favourite": false,
    "count": 0
  },
];
