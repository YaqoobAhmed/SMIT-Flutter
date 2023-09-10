import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Screens/categories_screen2.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/categories_banner.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

List<Map<String, dynamic>> cat_list = [
  {"title": "Fish", "subtitle": "From Sea", "image": "assets/images/fish.jpg"},
  {"title": "Meat", "subtitle": "Organic", "image": "assets/images/meat.jpeg"},
  {
    "title": "Vegetables",
    "subtitle": "Organic",
    "image": "assets/images/veg.jpg"
  },
  {
    "title": "Fruits",
    "subtitle": "Fresh & Organic",
    "image": "assets/images/fruit.jpg"
  }
];

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Expanded(
              flex: 0,
              child: CategoriesBanner(),
            ),
            Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: cat_list.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoriesScreen2()));
                            },
                            child: Container(
                              height: 194,
                              width: 164,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.3, color: Colors.grey),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.5,
                                        blurRadius: 5,
                                        offset: Offset(-2, 3))
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.13,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                cat_list[index]["image"]),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    cat_list[index]["title"],
                                    style: TextStyle(
                                      color: AllColors.BottonTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                  Text(
                                    cat_list[index]["subtitle"],
                                    style: TextStyle(
                                      color: AllColors.BottonTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))),
          ],
        ),
      ),
    );
  }
}
