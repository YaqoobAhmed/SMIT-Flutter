import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/category_box.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({
    super.key,
  });

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.primarycolor,
        title: const Center(child: Text("Favourite")),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => ListTile(
          title: Text("${productData[index]}"),
          trailing: Text("Price"),
        ),
      ),
    );
  }
}
