import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Shopping%20Cart/Widgets/cart_box.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double subtotalvalue = subtotal();
    num deliveryCharge = 2;
    double totalvalue = total();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(children: [
                Expanded(
                  flex: 0,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                          )),
                      Text(
                        "Shopping Cart (${cartData.length})",
                        style: TextStyle(
                          fontFamily: CustomFontFamily.regular,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      for (var index = 0; index < cartData.length; index++)
                        CartBox(
                          image: cartData[index]["image"],
                          title: cartData[index]["title"],
                          price: cartData[index]["price"],
                          count: cartData[index]["count"],
                          onPressed_remove: () async {
                            cartData[index]["count"] -= 1;
                            if (cartData[index]["count"] == 0) {
                              cartData.removeAt(index);
                            }
                            setState(() {});
                          },
                          onPressed_add: () {
                            cartData[index]["count"] += 1;
                            setState(() {});
                          },
                        )
                    ],
                  )),
                ),
              ]),
            ),
            Expanded(
              flex: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.34,
                width: MediaQuery.of(context).size.width * 1,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: const TextStyle(
                              color: Color(0xff616A7D),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Manrope",
                            ),
                          ),
                          Text("\$ ${subtotalvalue.toStringAsFixed(2)}")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivey",
                            style: const TextStyle(
                              color: Color(0xff616A7D),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Manrope",
                            ),
                          ),
                          if (subtotalvalue == 0) Text("\$ 0.00"),
                          if (subtotalvalue > 0)
                            Text("\$ ${deliveryCharge.toStringAsFixed(2)}")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: const TextStyle(
                              color: Color(0xff616A7D),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Manrope",
                            ),
                          ),
                          if (subtotalvalue == 0) Text("\$ 0.00"),
                          if (subtotalvalue > 0)
                            Text("\$ ${totalvalue.toStringAsFixed(2)}")
                        ],
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06),
                      Container(
                        height: 56,
                        width: 327,
                        decoration: BoxDecoration(
                            color: AllColors.primarycolor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(
                          child: Text(
                            "Proceed To Checkout",
                            style: TextStyle(
                                color: AllColors.ButtonBackgroundColor,
                                fontSize: 14,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w600,
                                wordSpacing: 2),
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
    );
  }
}

double subtotal() {
  double subtotal = 0;
  for (var elements in cartData) {
    subtotal += elements["price"] * elements["count"];
  }
  return subtotal;
}

double total() {
  double sub = subtotal();
  double delivery = 2.0;
  sub = sub + delivery;
  return sub;
}
