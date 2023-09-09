import 'package:flutter/material.dart';

import '../../../Widgets/widgets_classes.dart';
import '../../Widgets/category_box.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryBox(
                title: "Tomato",
                subtitle: "Fresh from Villages",
                description: "Starting from",
                price: "5.29",
                weight: "KG",
                boxColor: const Color(0xffFFC3BB),
                image: MyImages.photoImage),
            CategoryBox(
                title: "Corn.",
                subtitle: "Freshly harvest",
                description: "Starting from",
                price: "3.99",
                weight: "Dazan",
                boxColor: const Color(0xffF0FBC5),
                image: MyImages.photoImage),
            CategoryBox(
                title: "Cucumber",
                subtitle: "Fresh & healthy",
                description: "Starting from",
                price: "2.49",
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
