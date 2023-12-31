import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: blueColor,
            title: Text(
              "Buy Birds here",
              style: TextStyle(color: whiteColor),
            ),
            expandedHeight: 120,
            floating: true,
            pinned: false,
            snap: true,
          ),
          SliverList.builder(
            itemCount: birds.length,
            itemBuilder: (context, index) => ListTile(
              leading: Image(image: AssetImage(birds[index]["image"])),
              title: Text(birds[index]["Name"]),
            ),
          )
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> birds = [
  {
    "image": "assets/images/Parrot.jpg",
    "Name": "Parrot",
    "Breed": "Cross",
    "Contact": "123456789",
    "age": 1.5,
    "Price": 25000,
    "Discription":
        "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
    "Adress": "Plot 49,Garden Swest,Kaarachi"
  },
  {
    "image": "assets/images/Pigion.jpg",
    "Name": "Pigion",
    "Breed": "Cross",
    "Contact": "123456789",
    "age": 1.5,
    "Price": 25000,
    "Discription":
        "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
    "Adress": "Plot 49,Garden Swest,Kaarachi"
  },
  {
    "image": "assets/images/Duck.jpg",
    "Name": "Duck",
    "Breed": "Cross",
    "Contact": "123456789",
    "age": 1.5,
    "Price": 25000,
    "Discription":
        "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
    "Adress": "Plot 49,Garden Swest,Kaarachi"
  },
];
