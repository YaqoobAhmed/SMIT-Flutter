import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';

import '../../Widgets/category_box.dart';

class VegetablesScreen extends StatefulWidget {
  const VegetablesScreen({super.key});

  @override
  State<VegetablesScreen> createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {
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

                price: veg_products[index]["price"],
                weight: veg_products[index]["weight"],
                image: veg_products[index]["image"],
                isFavourited: veg_products[index]["favourite"],
                onPressed_fav: () {
                  veg_products[index]["favourite"] =
                      !veg_products[index]["favourite"];
                  if (veg_products[index]["favourite"]) {
                    favData.add(veg_products[index]);
                  } else {
                    favData.remove(veg_products[index]);
                  }
                  setState(() {});
                },
                // count: veg_products[index]["count"],
                // favbool: veg_products[index]["favourite"],
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

List<Map<String, dynamic>> veg_products = [
  {
    "title": "Tomato",
    "subtitle": "Fresh from Villages",
    "price": 5.29,
    "weight": "KG",
    "image": "assets/images/tomato.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Corn.",
    "subtitle": "Freshly harvest",
    "price": 3.99,
    "weight": "Dazan",
    "image": "assets/images/corn.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Cucumber",
    "subtitle": "Fresh & healthy",
    "price": 2.49,
    "weight": "KG",
    "image": "assets/images/cucumber.jpg",
    "favourite": false,
    "count": 0
  }
];
