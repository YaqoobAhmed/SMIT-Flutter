import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Favourites/Widgets/fav_box.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({
    super.key,
  });

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  late bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.primarycolor,
        title: const Center(
            child: Text(
          "Favourite Items",
          style: TextStyle(
            fontFamily: "Manrope",
            fontWeight: FontWeight.w600,
          ),
        )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AllColors.secondPrimary.withOpacity(0.15),
              AllColors.primarycolor.withOpacity(0.25),
              AllColors.secondPrimary.withOpacity(0.3)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              for (int index = 0; index < favData.length; index++)
                FavouriteBox(
                  title: favData[index]["title"],
                  price: favData[index]["price"],
                  weight: favData[index]["weight"],
                  image: favData[index]["image"],
                  isFavourited: favData[index]["favourite"],
                  onPressed_fav: () {
                    favData[index]["favourite"] = !favData[index]["favourite"];
                    favData.remove(favData[index]);
                    setState(() {});
                  },
                  onPressed_cart: () {
                    cartData[index]["count"] + 1;
                    setState(() {});
                  },
                ),
              if (favData.length < 1)
                Center(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: Center(
                            child: Text(
                          "No favourite data",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              shadows: [
                                Shadow(
                                  color: AllColors.primarycolor,
                                  blurRadius: 10.0,
                                  offset: Offset(-3.0, 5.0),
                                )
                              ],
                              letterSpacing: 1),
                        )))),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
