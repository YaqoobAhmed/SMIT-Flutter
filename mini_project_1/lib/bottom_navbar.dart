import 'package:flutter/material.dart';

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:mini_project_1/Screens/Categories/Screens/categories_screen2.dart';
import 'package:mini_project_1/Screens/Favourites/Screens/favourite_screen.dart';
import 'package:mini_project_1/Screens/Grocery%20Home/Screens/grocery_home_screen.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';
import 'package:mini_project_1/Screens/more/Screens/more_screen.dart';

void main() => runApp(const MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;

  final tabs = [
    const GroceryHomeScreen(),
    const CategoriesScreen2(),
    const FavouriteScreen(),
    const MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: AllColors.secondPrimary,
            ),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.category_outlined,
              color: AllColors.secondPrimary,
            ),
            label: 'Category',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.favorite_border_outlined,
              color: AllColors.secondPrimary,
            ),
            label: 'Favorite',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.more_vert_rounded,
              color: AllColors.secondPrimary,
            ),
            label: 'More',
          ),
        ],
        color: AllColors.ButtonBackgroundColor,
        buttonBackgroundColor: AllColors.primarycolor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: tabs[_page],
    );
  }
}



















// // import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// // import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// // import 'package:flutter/material.dart';
// // import 'package:mini_project_1/Screens/Categories/Screens/categories_screen.dart';
// // import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

// // class BottomNavBar extends StatefulWidget {
// //   const BottomNavBar({super.key});

// //   @override
// //   State<BottomNavBar> createState() => _BottomNavBarState();
// // }

// // class _BottomNavBarState extends State<BottomNavBar> {
// //   get ontapcolor => null;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.amber,
// //       bottomNavigationBar: CurvedNavigationBar(
// //         backgroundColor: Colors.transparent,
// //         animationDuration: const Duration(milliseconds: 300),
// //         animationCurve: Curves.ease,
        
// //         height: 65,
// //         onTap: (index) {
          
// //         },
// //         items: [
// //           CurvedNavigationBarItem(
// //             child: Icon(
// //               Icons.home_outlined,
// //             ),
// //             label: 'Home',
// //           ),
// //           CurvedNavigationBarItem(
// //             child: Icon(
// //               Icons.category_outlined,
// //             ),
// //             label: 'Category',
// //           ),
// //           CurvedNavigationBarItem(
// //             child: Icon(Icons.favorite_border_outlined),
// //             label: 'Favorite',
// //           ),
// //           CurvedNavigationBarItem(
// //             child: Icon(Icons.more_vert),
// //             label: 'More',
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }






//       // backgroundColor: AllColors.secondPrimary,
//       // bottomNavigationBar: CurvedNavigationBar(
//       //     backgroundColor: Colors.transparent,
//       //     color: AllColors.primarycolor,
//       //     animationDuration: const Duration(milliseconds: 300),
//       //     //buttonBackgroundColor: Colors.black,
//       //     items: [
//       //       Icon(Icons.home),
//       //       Icon(Icons.category_outlined),
//       //       Icon(
//       //         Icons.favorite_border,
//       //       ),
//       //       Icon(Icons.settings),
//       //     ]),