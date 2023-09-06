import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FishAndMeatScreen extends StatelessWidget {
  const FishAndMeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryBox(
                title: "Big & Small fishes",
                subtitle: "Fresh from sea",
                description: "Starting from",
                price: "35",
                weight: "KG",
                boxColor: Color(0xffFFDC83),
                image: MyImages.photoImage),
            CategoryBox(
                title: "Halal Meats",
                subtitle: "Organics & Fresh",
                description: "Starting from",
                price: "90",
                weight: "KG",
                boxColor: Color(0xffFFC3BB),
                image: MyImages.photoImage),
            CategoryBox(
                title: "Fried Items",
                subtitle: "Halal & Fresh",
                description: "Starting from",
                price: "24",
                weight: "KG",
                boxColor: Color.fromARGB(255, 185, 224, 122),
                image: MyImages.photoImage),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
