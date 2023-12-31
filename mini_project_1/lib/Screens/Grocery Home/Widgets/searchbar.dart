import 'package:flutter/material.dart';

import '../../Widgets/widgets_classes.dart';

class GrocerySearchbar extends StatelessWidget {
  const GrocerySearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: const MaterialStatePropertyAll(Color(0xff153075)),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          color: AllColors.SubTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: "Manrope",
        ),
      ),
      leading: Icon(
        Icons.search,
        color: AllColors.SubTextColor,
        size: 28,
      ),
      hintText: "Search Products or store",
    );
  }
}
