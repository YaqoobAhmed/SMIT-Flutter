import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Favourites/Screens/favourite_screen.dart';
import 'package:mini_project_1/Screens/Shopping%20Cart/Screens/cart_screen.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AllColors.primarycolor,
          title: const Center(
              child: Text(
            "Profile ",
            style: TextStyle(
              fontFamily: "Manrope",
              fontWeight: FontWeight.w600,
            ),
          )),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AllColors.primarycolor.withOpacity(0.35),
                AllColors.secondPrimary.withOpacity(0.15),
                AllColors.primarycolor.withOpacity(0.35),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              GestureDetector(
                onTap: () => _showFullImageDialog(context),
                child: CircleAvatar(
                  radius: 43,
                  backgroundColor: AllColors.primarycolor,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/images/DP.jpg",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Yaqobb Ahmed",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 2),
              ),
              Text(
                "yaqoobahmed29@gmail.com",
                style: TextStyle(
                  fontFamily: "Manrope",
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavouriteScreen(),
                    )),
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color(0xff616A7D),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        " Favourite (${favData.length})",
                        style: const TextStyle(
                          color: Color(0xff616A7D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Manrope",
                        ),
                      )
                    ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    )),
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag,
                        color: Color(0xff616A7D),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Shopping Cart (${cartData.length})",
                        style: const TextStyle(
                          color: Color(0xff616A7D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Manrope",
                        ),
                      )
                    ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
                Icon(
                  Icons.settings,
                  color: Color(0xff616A7D),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  " Settings",
                  style: const TextStyle(
                    color: Color(0xff616A7D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Manrope",
                  ),
                )
              ]),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              GestureDetector(
                onTap: () => SystemNavigator.pop(),
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Color(0xff616A7D),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        " Exit",
                        style: const TextStyle(
                          color: Color(0xff616A7D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Manrope",
                        ),
                      )
                    ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ],
          ),
        ));
  }
}

void _showFullImageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          width: double.infinity,
          height: 300.0, // Set the desired height for the enlarged image
          child: Image.asset(
              "assets/images/DP.jpg"), // Replace with your image asset
        ),
      );
    },
  );
}
