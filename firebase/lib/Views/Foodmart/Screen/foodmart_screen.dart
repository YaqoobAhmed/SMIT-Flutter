import 'package:firebase/Views/Onboarding/Screen/onboarding.dart';
import 'package:firebase/Views/bird_view/Screen/bird_view.dart';
import 'package:firebase/Views/productView.dart/Screen/product_view_screen.dart';
import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class FoodMartScreen extends StatefulWidget {
  const FoodMartScreen({super.key});

  @override
  State<FoodMartScreen> createState() => _FoodMartScreenState();
}

class _FoodMartScreenState extends State<FoodMartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OnboardingScreen(),
                )),
            icon: Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        title: Text(
          "Food Mart",
          style: TextStyle(color: whiteColor),
        ),
        centerTitle: true,
        backgroundColor: blueColor,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductViewScreen(
                      image: "assets/images/birdfood.jpg",
                      name: "Pure Love",
                      discription: "discription",
                      address: "address",
                      price: "price",
                      contact: "contact"),
                )),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 194,
                width: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(-2, 3),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/birdfood.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65,
                      child: ListTile(
                        title: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            Text("name"),
                            Text("\$ price"),
                          ],
                        ),
                        subtitle: Text("breed"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
