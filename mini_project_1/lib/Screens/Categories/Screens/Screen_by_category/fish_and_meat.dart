import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';
import 'package:mini_project_1/Screens/Products/Screens/prodct_screen.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FishAndMeatScreen extends StatelessWidget {
  const FishAndMeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(),
                    ));
              },
              child: CategoryBox(
                  title: "Big & Small fishes",
                  subtitle: "Fresh from sea",
                  description: "Starting from",
                  price: "35",
                  weight: "KG",
                  boxColor: const Color(0xffFFDC83),
                  image: MyImages.photoImage),
            ),
            CategoryBox(
                title: "Halal Meats",
                subtitle: "Organics & Fresh",
                description: "Starting from",
                price: "90",
                weight: "KG",
                boxColor: const Color(0xffFFC3BB),
                image: MyImages.photoImage),
            CategoryBox(
                title: "Fried Items",
                subtitle: "Halal & Fresh",
                description: "Starting from",
                price: "24",
                weight: "KG",
                boxColor: const Color.fromARGB(255, 185, 224, 122),
                image: MyImages.photoImage),
            const SizedBox(
              height: 20,
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
    "price": "35",
    "weight": "KG",
    'image': "assets/images/fish.jpg"
  },
  {
    "title": "Halal Beef Meats",
    "subtitle": "Organics & Fresh",
    "description": "Starting from",
    "price": "90",
    "weight": "KG",
    "image": "assets/images/meat.jpeg"
  },
  {
    "title": "Nuggets",
    "subtitle": "Halal & Fresh",
    "description": "Starting from",
    "price": "24",
    "weight": "KG",
    "image": "assets/images/nuggets.jpeg"
  }
];
