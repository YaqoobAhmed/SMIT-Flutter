import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/categories_banner.dart';

class CategoriesScreen2 extends StatelessWidget {
  const CategoriesScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 0, child: CategoriesBanner()),
          Expanded(
              child: Column(
            children: [
              Row(
                children: [
                  Container(color: Colors.amber, child: Text("Fish & Meat"))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
