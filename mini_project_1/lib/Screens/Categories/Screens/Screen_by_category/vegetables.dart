import 'package:flutter/material.dart';

import '../../Widgets/category_box.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int index = 0; index < veg_products.length; index++)
              CategoryBox(
                title: veg_products[index]["title"],
                subtitle: veg_products[index]["subtitle"],
                description: veg_products[index]["description"],
                price: veg_products[index]["price"],
                weight: veg_products[index]["weight"],
                image: veg_products[index]["image"],
                // count: veg_products[index]["count"],
                // favbool: veg_products[index]["favourite"],
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

List<Map<String, dynamic>> veg_products = [
  {
    "title": "Tomato",
    "subtitle": "Fresh from Villages",
    "description": "Starting from",
    "price": 5.29,
    "weight": "KG",
    "image": "assets/images/tomato.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Corn.",
    "subtitle": "Freshly harvest",
    "description": "Starting from",
    "price": 3.99,
    "weight": "Dazan",
    "image": "assets/images/corn.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Cucumber",
    "subtitle": "Fresh & healthy",
    "description": "Starting from",
    "price": 2.49,
    "weight": "KG",
    "image": "assets/images/cucumber.jpg",
    "favourite": false,
    "count": 0
  }
];
