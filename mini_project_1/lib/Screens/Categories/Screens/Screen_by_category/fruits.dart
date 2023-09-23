import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FruitsScreen extends StatefulWidget {
  const FruitsScreen({super.key});

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int index = 0; index < fruit_products.length; index++)
              CategoryBox(
                title: fruit_products[index]["title"],
                subtitle: fruit_products[index]["subtitle"],
                price: fruit_products[index]["price"],
                weight: fruit_products[index]["weight"],
                image: fruit_products[index]["image"],
                isFavourited: fruit_products[index]["favourite"],
                onPressed_fav: () {
                  fruit_products[index]["favourite"] =
                      !fruit_products[index]["favourite"];
                  if (fruit_products[index]["favourite"]) {
                    favData.add(fruit_products[index]);
                  } else {
                    favData.remove(fruit_products[index]);
                  }
                  setState(() {});
                },
                onPressed_cart: () {
                  setState(() {
                    if (fruit_products[index]["count"] == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: AllColors.secondPrimary,
                        duration: Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        content: Text("Item Added to Cart"),
                        action: SnackBarAction(
                            label: "Undo",
                            onPressed: () {
                              cartData.remove(fruit_products[index]);
                            }),
                      ));
                      fruit_products[index]["count"] += 1;
                      cartData.add(fruit_products[index]);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: AllColors.secondPrimary,
                        duration: Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
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
                // count: fruit_products[index]["count"],
                // favbool: fruit_products[index]["favourite"],
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

List<Map<String, dynamic>> fruit_products = [
  {
    "title": "Banana",
    "subtitle": "Fresh from Villages",
    "price": 4.75,
    "weight": "Dazan",
    "image": "assets/images/banana.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "WaterMelon",
    "subtitle": "Stored",
    "price": 7.49,
    "weight": "KG",
    "image": "assets/images/watermellon.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Apple",
    "subtitle": "Fresh from Villages",
    "price": 5.29,
    "weight": "KG",
    "image": "assets/images/apple.jpeg",
    "favourite": false,
    "count": 0
  },
];
