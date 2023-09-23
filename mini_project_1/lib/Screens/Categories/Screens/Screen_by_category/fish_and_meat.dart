import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FishAndMeatScreen extends StatefulWidget {
  const FishAndMeatScreen({super.key});

  @override
  State<FishAndMeatScreen> createState() => _FishAndMeatScreenState();
}

class _FishAndMeatScreenState extends State<FishAndMeatScreen> {
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
                price: fishNmeat_products[index]["price"],
                weight: fishNmeat_products[index]["weight"],
                image: fishNmeat_products[index]["image"],
                isFavourited: fishNmeat_products[index]["favourite"],
                onPressed_fav: () {
                  fishNmeat_products[index]["favourite"] =
                      !fishNmeat_products[index]["favourite"];
                  if (fishNmeat_products[index]["favourite"]) {
                    favData.add(fishNmeat_products[index]);
                  } else {
                    favData.remove(fishNmeat_products[index]);
                  }
                  setState(() {});
                },
                onPressed_cart: () {
                  setState(() {
                    if (fishNmeat_products[index]["count"] == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: AllColors.secondPrimary,
                        duration: Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                        content: Text("Item Added to Cart"),
                        action: SnackBarAction(
                            label: "Undo",
                            onPressed: () {
                              cartData.remove(fishNmeat_products[index]);
                            }),
                      ));
                      fishNmeat_products[index]["count"] += 1;
                      cartData.add(fishNmeat_products[index]);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: AllColors.secondPrimary,
                        duration: Duration(seconds: 2),
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

List<Map<String, dynamic>> fishNmeat_products = [
  {
    "title": "Big & Small fishes",
    "subtitle": "Fresh from sea",
    "price": 35,
    "weight": "KG",
    'image': "assets/images/fish.jpg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Halal Beef Meats",
    "subtitle": "Organics & Fresh",
    "price": 90,
    "weight": "KG",
    "image": "assets/images/meat.jpeg",
    "favourite": false,
    "count": 0
  },
  {
    "title": "Nuggets",
    "subtitle": "Halal & Fresh",
    "price": 24,
    "weight": "KG",
    "image": "assets/images/nuggets.jpeg",
    "favourite": false,
    "count": 0
  }
];
