import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => FishAndMeatScreen(),
              //       ));
              // },
              child: CategoryBox(
                  title: "Banana",
                  subtitle: "Fresh from Villages",
                  description: "Starting from",
                  price: "4.75",
                  weight: "Dazan",
                  boxColor: Color(0xffF0FBC5),
                  image: MyImages.photoImage),
            ),
            CategoryBox(
                title: "WaterMelon",
                subtitle: "Stored",
                description: "Starting from",
                price: "7.49",
                weight: "KG",
                boxColor: Color.fromARGB(255, 185, 224, 122),
                image: MyImages.photoImage),
            CategoryBox(
                title: "Apple",
                subtitle: "Fresh from Villages",
                description: "Starting from",
                price: "5.29",
                weight: "KG",
                boxColor: Color(0xffFFC3BB),
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
