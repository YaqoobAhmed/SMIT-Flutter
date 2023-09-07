import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.primarycolor,
        title: Center(child: Text("Favourite")),
      ),
      body: Container(),
    );
  }
}
