import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Categories/Screens/Screen_by_category/fish_and_meat.dart';
import 'package:mini_project_1/Screens/Categories/Screens/Screen_by_category/fruits.dart';
import 'package:mini_project_1/Screens/Categories/Screens/Screen_by_category/vegetables.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/categories_banner.dart';
import 'package:mini_project_1/Screens/Categories/Widgets/listdata.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

List<Itemdata> lables = [
  Itemdata(itemdata: "Fish & Meat"),
  Itemdata(itemdata: "Vegetables"),
  Itemdata(itemdata: "Fruits")
];

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreen2State();
}

class _CategoriesScreen2State extends State<CategoriesScreen> {
  final _controllerCategory = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 0, child: CategoriesBanner()),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 36,
                        width: 300,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: lables.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                _controllerCategory.jumpToPage(index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: lables[index].isSelected == true
                                        ? AllColors.secondPrimary
                                        : Colors.white,
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xffB2BBCE))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(
                                    lables[index].itemdata,
                                    style: TextStyle(
                                      color: lables[index].isSelected == true
                                          ? Colors.white
                                          : const Color(0xff616A7D),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: CustomFontFamily.semibold,
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.615,
                    width: MediaQuery.of(context).size.width * 1,
                    color: Colors.black,
                    child: PageView(
                      padEnds: false,
                      onPageChanged: (value) {
                        for (var elements in lables) {
                          elements.isSelected = false;
                        }

                        setState(() {
                          lables[value].isSelected = true;
                        });
                      },
                      controller: _controllerCategory,
                      children: const [
                        FishAndMeatScreen(),
                        VegetablesScreen(),
                        FruitsScreen()
                      ],
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
