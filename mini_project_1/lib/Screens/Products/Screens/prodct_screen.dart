// import 'package:flutter/material.dart';
// import '../../Widgets/widgets_classes.dart';

// final List<FilterData> filtersLables = [
//   FilterData(itemdata: "Popular"),
//   FilterData(itemdata: "Low Price"),
//   FilterData(itemdata: "Small Fishes"),
//   FilterData(itemdata: "Big Fishes"),
// ];

// class FilterData {
//   String itemdata;
//   bool isSelected;
//   FilterData({required this.itemdata, this.isSelected = false});
// }

// class ProductScreen extends StatelessWidget {
//   ProductScreen({super.key});

//   final PageController _controllerProducts = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 IconButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: const Icon(
//                       Icons.arrow_back_ios,
//                       size: 18,
//                     )),
//                 Text(
//                   "Big & Small Fishes",
//                   style: TextStyle(
//                     color: AllColors.BottonTextColor,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                     fontFamily: CustomFontFamily.regular,
//                   ),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                     onPressed: () {}, icon: const Icon(Icons.search_outlined)),
//                 IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.shopping_bag_outlined))
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: GridView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: 4,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 childAspectRatio: 0.9,
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//               ),
//               itemBuilder: (context, index) => Container(
//                 height: 194,
//                 width: 164,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: Colors.white,
//                     border: Border.all(width: 0.3, color: Colors.grey),
//                     boxShadow: const [
//                       BoxShadow(
//                           color: Colors.grey,
//                           spreadRadius: 0.5,
//                           blurRadius: 5,
//                           offset: Offset(-2, 3))
//                     ]),
//                 child: Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Image.asset(
//                               MyImages.photoImage,
//                               color: const Color(0xffA1ABC0),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           GestureDetector(
//                               onTap: () {},
//                               child: CircleAvatar(
//                                   backgroundColor: AllColors.primarycolor,
//                                   radius: 14,
//                                   child: const Icon(Icons.add))),
//                         ],
//                       ),
//                       Text(
//                         "\$342",
//                         style: TextStyle(
//                           color: AllColors.BottonTextColor,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: "Manrope",
//                         ),
//                       ),
//                       Text(
//                         "Orange Package 1 | 1 bundle",
//                         style: TextStyle(
//                           color: AllColors.BottonTextColor,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           fontFamily: "Manrope",
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
