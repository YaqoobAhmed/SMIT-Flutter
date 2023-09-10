import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class GrocerySaleRow extends StatelessWidget {
  const GrocerySaleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 123,
                  width: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image:
                              AssetImage("assets/images/shopping-50-off.jpg"),
                          fit: BoxFit.cover),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(-2, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        //Image.asset("assets/images/Image Icon.png"),
                        const Spacer(),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "50% OFF",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "On First 3 orders",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 123,
                  width: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/flags10green_crh12_07.jpg"),
                          fit: BoxFit.cover),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(-2, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        const Spacer(),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "14% OFF",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "On Azadi Sale",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 123,
                  width: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/credit-card-.jpg"),
                          fit: BoxFit.cover),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(-2, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        const Spacer(),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "10% OFF",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "On Credit Cards",
                                style: TextStyle(
                                  color: AllColors.HeadingTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
