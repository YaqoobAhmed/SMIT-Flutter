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
        title: const Center(child: Text("Favourite")),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/favbackground.jpeg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                for (int index = 1; index < favData.length; index++)
                  FavouriteBox(
                    title: favData[index]["title"],

                    price: favData[index]["price"],
                    weight: favData[index]["weight"],
                    image: favData[index]["image"],
                    isFavourited: favData[index]["favourite"],
                    onPressed_fav: () {
                      favData[index]["favourite"] =
                          !favData[index]["favourite"];
                      favData.remove(favData[index]);
                      setState(() {});
                    },
                    // count: fruit_products[index]["count"],
                    // favbool: fruit_products[index]["favourite"],
                  ),
                if (favData.length < 2)
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
                const SizedBox(
                  height: 45,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
