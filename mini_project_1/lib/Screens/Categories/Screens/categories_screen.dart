import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Screens/categories_screen2.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/categories_banner.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

List<Map<String, dynamic>> cat_list = [
  {
    "title": "Fish",
    "subtitle": "From Sea",
    "image":
        "https://meatmanagement.com/wp-content/uploads/2021/10/iStock-450969175-Copy.jpg"
  },
  {
    "title": "Meat",
    "subtitle": "Organic",
    "image":
        "https://images.ctfassets.net/3s5io6mnxfqz/5GlOYuzg0nApcehTPlbJMy/140abddf0f3f93fa16568f4d035cd5e6/AdobeStock_175165460.jpeg?w=828"
  },
  {
    "title": "Vegetables",
    "subtitle": "Organic",
    "image":
        "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_center,w_730,h_487/k%2FPhoto%2FLifestyle%2FLifestyle_-_Kitchn_Guide_to_Storing_Produce_and_Vegetables_2019-04-30_PHOTO_Kitchn66447_"
  },
  {
    "title": "Fruits",
    "subtitle": "Fresh & Organic",
    "image": "https://leafyplace.com/wp-content/uploads/2019/05/post1358jpg.jpg"
  }
];

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: CategoriesBanner(),
            ),
            Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: cat_list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoriesScreen2()));
                            },
                            child: Container(
                              height: 194,
                              width: 164,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.3, color: Colors.grey),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.5,
                                        blurRadius: 5,
                                        offset: Offset(-2, 3))
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.42,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    cat_list[index]["image"]),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    cat_list[index]["title"],
                                    style: TextStyle(
                                      color: AllColors.BottonTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                  Text(
                                    cat_list[index]["subtitle"],
                                    style: TextStyle(
                                      color: AllColors.BottonTextColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Manrope",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))),
          ],
        ),
      ),
    );
  }
}
