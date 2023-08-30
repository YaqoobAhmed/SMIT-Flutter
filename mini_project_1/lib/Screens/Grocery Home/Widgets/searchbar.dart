import 'package:flutter/material.dart';

import '../../Widgets/colors.dart';

class GrocerySearchbar extends StatefulWidget {
  const GrocerySearchbar({super.key});

  @override
  State<GrocerySearchbar> createState() => _GrocerySearchbarState();
}

class _GrocerySearchbarState extends State<GrocerySearchbar> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: MaterialStatePropertyAll(Color(0xff153075)),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          color: AllColors.HeadingTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: "Manrope",
        ),
      ),
      leading: Icon(
        Icons.search,
        color: AllColors.HeadingTextColor,
        size: 28,
      ),
      hintText: "Search Here!",
    );
  }
}
