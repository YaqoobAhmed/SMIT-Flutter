import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

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
                onPressed_cart: () {
                  setState(() {
                    if (veg_products[index]["count"] == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 2),
                        backgroundColor: AllColors.secondPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        behavior: SnackBarBehavior.floating,
                        content: Text("Item Added to Cart"),
                        action: SnackBarAction(
                            label: "Undo",
                            onPressed: () {
                              cartData.remove(veg_products[index]);
                            }),
                      ));
                      veg_products[index]["count"] += 1;
                      cartData.add(veg_products[index]);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: AllColors.secondPrimary,
                        duration: Duration(seconds: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        behavior: SnackBarBehavior.floating,
                        content: Text("Added one more"),
                        action: SnackBarAction(
                            label: "Undo",
                            onPressed: () {
                              cartData[index]["count"] -= 1;
                            }),
                      ));
                      cartData[index]["count"] += 1;
                    }
                  });
                },
              ),
            Container(
              height: MediaQuery.of(context).size.height * 0.11,
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
    "weight": "KG",
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
