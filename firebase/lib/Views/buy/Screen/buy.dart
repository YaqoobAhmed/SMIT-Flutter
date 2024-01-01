import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: blueColor, // Use predefined Flutter color
            title: Text(
              "Buy Birds here",
              style: TextStyle(
                  color: Colors.white), // Use predefined Flutter color
            ),
            expandedHeight: 120,
            floating: true,
            pinned: false,
            snap: true,
          ),
          // SliverGrid(
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 300.0,
          //     mainAxisSpacing: 10.0,
          //     crossAxisSpacing: 10.0,
          //     childAspectRatio: 2.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       final bird = birds[index]; // Access individual bird data
          //       return Padding(
          //         padding: EdgeInsets.all(10),
          //         child: Container(
          //           height: 300,
          //           color: Colors.amber,
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Container(
          //                 height: 100,
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                     image: AssetImage(
          //                       bird['image'],
          //                     ),
          //                     fit: BoxFit.fill,
          //                   ),
          //                 ),
          //               ),
          //               Container(
          //                 child: Text(bird['Name']),
          //               )

          //               // Other bird information widgets can be added here
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //     childCount: birds.length,
          //   ),
          // )
          SliverGrid.builder(
            itemCount: birds.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 194,
                width: MediaQuery.of(context).size.height * 0.2,
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
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(birds[index]["image"]),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        )),
                    SizedBox(
                      height: 65,
                      child: ListTile(
                        title: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              Text(birds[index]["Name"]),
                              Text("\$ ${birds[index]["Price"].toString()}")
                            ]),
                        subtitle: Text(birds[index]["Breed"]),
                      ),
                    ),
                  ],
                ),
              ),
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
