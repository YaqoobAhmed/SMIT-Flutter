import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_banner.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_recomanded_container.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_sale_row.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/grocery_savings.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Widgets/recomended_data.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GroceryHomeScreen extends StatefulWidget {
  const GroceryHomeScreen({super.key});

  @override
  State<GroceryHomeScreen> createState() => _GroceryHomeScreenState();
}

class _GroceryHomeScreenState extends State<GroceryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 0, child: GroceryBanner()),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GrocerySaleRow(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      "Recomended",
                      style: TextStyle(
                          color: const Color(0xff1E222B),
                          fontSize: 30,
                          fontFamily: CustomFontFamily.regular),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(children: [
                        for (int index = 0;
                            index < recommended_data.length;
                            index++)
                          GroceryRecomendedContainer(
                            image: recommended_data[index]['image'],
                            title: recommended_data[index]['title'],
                            subtitle: recommended_data[index]['subtitle'],
                            price: recommended_data[index]['price'],
                            count: recommended_data[index]['count'],
                            onTap: () {
                              setState(() {
                                if (recommended_data[index]["count"] == 0) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: AllColors.secondPrimary,
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    content: Text("Item Added to Cart"),
                                    action: SnackBarAction(
                                        label: "Undo",
                                        onPressed: () {
                                          cartData
                                              .remove(recommended_data[index]);
                                        }),
                                  ));
                                  recommended_data[index]["count"] += 1;
                                  cartData.add(recommended_data[index]);
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
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
                      ]),
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Transform.rotate(
                          angle: 6.2,
                          child: Image.asset(
                            "assets/images/savings back/Ellipse 1547.jpg",
                          ),
                        ),
                      ),
                      Positioned(
                        left: 130,
                        top: 35,
                        child: Image.asset(
                          "assets/images/savings back/Ellipse 1546.jpg",
                        ),
                      ),
                      Positioned(
                        left: 172,
                        top: 132,
                        child: Image.asset(
                          "assets/images/savings back/Ellipse 1548.jpg",
                        ),
                      ),
                      Positioned(
                        left: 375,
                        top: 80,
                        child: Image.asset(
                          "assets/images/savings back/Ellipse 1549.jpg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: GrocerySavings(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Deals on Fruits & Tea",
                      style: TextStyle(
                        color: AllColors.BottonTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: CustomFontFamily.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.9,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) => Container(
                        height: 194,
                        width: 164,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(width: 0.3, color: Colors.grey),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0.5,
                                  blurRadius: 5,
                                  offset: Offset(-2, 3))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Stack(children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              deals_on_fruitNtea[index]
                                                  ['image']),
                                          fit: BoxFit.cover)),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 10,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (deals_on_fruitNtea[index]
                                                ["count"] ==
                                            0) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            backgroundColor:
                                                AllColors.secondPrimary,
                                            duration: Duration(seconds: 2),
                                            behavior: SnackBarBehavior.floating,
                                            content: Text("Item Added to Cart"),
                                            action: SnackBarAction(
                                                label: "Undo",
                                                onPressed: () {
                                                  cartData.remove(
                                                      deals_on_fruitNtea[
                                                          index]);
                                                }),
                                          ));
                                          deals_on_fruitNtea[index]["count"] +=
                                              1;
                                          cartData
                                              .add(deals_on_fruitNtea[index]);
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            backgroundColor:
                                                AllColors.secondPrimary,
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
                                    child: CircleAvatar(
                                      backgroundColor: AllColors.primarycolor,
                                      radius: 14,
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "\$ ${deals_on_fruitNtea[index]['price']}",
                                style: TextStyle(
                                  color: AllColors.BottonTextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                deals_on_fruitNtea[index]['subtitle'],
                                style: TextStyle(
                                  color: AllColors.BottonTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Manrope",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.025,
          )
        ],
      ),
    );
  }
}
