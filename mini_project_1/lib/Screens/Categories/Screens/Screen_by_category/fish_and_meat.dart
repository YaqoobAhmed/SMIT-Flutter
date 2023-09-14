import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';

class FishAndMeatScreen extends StatelessWidget {
  const FishAndMeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int index = 0; index < fishNmeat_products.length; index++)
              CategoryBox(
                title: fishNmeat_products[index]["title"],
                subtitle: fishNmeat_products[index]["subtitle"],
                description: fishNmeat_products[index]["description"],
                price: fishNmeat_products[index]["price"],
                weight: fishNmeat_products[index]["weight"],
                image: fishNmeat_products[index]["image"],
                // count: fishNmeat_products[index]["count"],
                // favbool: fishNmeat_products[index]["favourite"],
              ),
            const SizedBox(
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> fishNmeat_products = [
  {
    "title": "Big & Small fishes",
    "subtitle": "Fresh from sea",
    "description": "Starting from",
    "price": 35,
    "weight": "KG",
    'image': "assets/images/fish.jpg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Halal Beef Meats",
    "subtitle": "Organics & Fresh",
    "description": "Starting from",
    "price": 90,
    "weight": "KG",
    "image": "assets/images/meat.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Nuggets",
    "subtitle": "Halal & Fresh",
    "description": "Starting from",
    "price": 24,
    "weight": "KG",
    "image": "assets/images/nuggets.jpeg",
    "favourite": false,
    "count": 0
  }
];
