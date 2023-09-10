import 'package:flutter/material.dart';
import 'package:mini_project_1/Screens/Widgets/widgets_classes.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 194,
        width: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 5,
                  offset: Offset(-2, 3))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xffE0E2EE), width: 1))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 8),
                child: Image.asset(
                  MyImages.photoImage,
                  height: 68,
                  width: 68,
                  color: const Color(0xffA1ABC0),
                ),
              ),
            ),
            const SizedBox(
              height: 65,
              child: ListTile(
                title: Text("Lemonade"),
                subtitle: Text("Lemonade"),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    const Text("Unit"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("\$15"),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            backgroundColor: AllColors.primarycolor,
                            radius: 14,
                            child: const Icon(Icons.add)))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
