// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase/Views/product_view/Screen/product_view.dart';
// import 'package:flutter/material.dart';

// class BuyScreen extends StatelessWidget {
//   const BuyScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: StreamBuilder(
//           stream: FirebaseFirestore.instance.collection("adds").snapshots(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.connectionState == ConnectionState.active) {
//               if (snapshot.hasData && snapshot.data != null) {
//                 return GridView.builder(
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: snapshot.data!.docs.length,
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2),
//                     itemBuilder: (context, index) {
//                       Map<String, dynamic> postMap = snapshot.data!.docs[index]
//                           .data() as Map<String, dynamic>;

//                       return Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: GestureDetector(
//                           onTap: () => Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ProductView(
//                                   image: postMap["birdPic"],
//                                   name: postMap["name"],
//                                   breed: postMap["breed"],
//                                   age: postMap["age"],
//                                   discription: postMap["discription"],
//                                   address: postMap["address"],
//                                   price: postMap["price"],
//                                   contact: postMap["contact"],
//                                 ),
//                               )),
//                           child: Container(
//                             height: 194,
//                             width: MediaQuery.of(context).size.height * 0.2,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.white,
//                                 boxShadow: const [
//                                   BoxShadow(
//                                       color: Colors.grey,
//                                       spreadRadius: 0.5,
//                                       blurRadius: 5,
//                                       offset: Offset(-2, 3))
//                                 ]),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.12,
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image:
//                                               NetworkImage(postMap["birdPic"]),
//                                           fit: BoxFit.fill),
//                                       borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(20),
//                                           topRight: Radius.circular(20)),
//                                     )),
//                                 SizedBox(
//                                   height: 65,
//                                   child: ListTile(
//                                     title: Wrap(
//                                         alignment: WrapAlignment.spaceBetween,
//                                         children: [
//                                           Text(postMap["name"]),
//                                           Text(
//                                               "\$ ${postMap["price"].toString()}")
//                                         ]),
//                                     subtitle: Text(postMap["breed"]),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     });
//               } else {
//                 return Text("no data");
//               }
//             } else {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           }),
//     );
//   }
// }

// List<Map<String, dynamic>> birds = [
//   {
//     "image": "assets/images/Parrotgreen.jpeg",
//     "name": "Parrot",
//     "breed": "Cross",
//     "contact": "+92 3060896279",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Pigion.jpg",
//     "name": "Pigion",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Duck.jpg",
//     "name": "Duck",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Parrotgreen.jpeg",
//     "name": "Parrot",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Pigion.jpg",
//     "name": "Pigion",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Duck.jpg",
//     "name": "Duck",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Parrotgreen.jpeg",
//     "name": "Parrot",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Pigion.jpg",
//     "name": "Pigion",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
//   {
//     "image": "assets/images/Duck.jpg",
//     "name": "Duck",
//     "breed": "Cross",
//     "contact": "123456789",
//     "age": 1.5,
//     "price": 25000,
//     "discription":
//         "Meet Mango, a vibrant 1.5-year-old parrot with a unique blend of colorful feathers that reflect its captivating crossbreed heritage. This lively avian companion combines the best traits of its diverse lineage, boasting a playful demeanor and a melodic repertoire of chirps and squawks. Mango's feathered ensemble showcases a mesmerizing fusion of hues, creating a visually stunning spectacle that mirrors its dynamic personality. With each flap of its wings, this crossbreed parrot brings a burst of energy and joy to its surroundings, making it a delightful addition to any feathered family.",
//     "address": "Plot 49,Garden Swest,Kaarachi"
//   },
// ];

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/Views/product_view/Screen/product_view.dart';
import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
  BuyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("adds").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            return GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                Map<String, dynamic> postMap =
                    snapshot.data!.docs[index].data() as Map<String, dynamic>;

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductView(
                        image: postMap["birdPic"],
                        name: postMap["name"],
                        breed: postMap["breed"],
                        age: postMap["age"],
                        discription: postMap["discription"],
                        address: postMap["address"],
                        price: postMap["price"],
                        contact: postMap["contact"],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 194,
                      width: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(-2, 3),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   height: MediaQuery.of(context).size.height * 0.12,
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //       image: NetworkImage(postMap["birdPic"]),
                          //       fit: BoxFit.fill,
                          //     ),
                          //     borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(20),
                          //       topRight: Radius.circular(20),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 65,
                            child: ListTile(
                              title: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text(postMap["name"]),
                                  Text("\$ ${postMap["price"]}"),
                                ],
                              ),
                              subtitle: Text(postMap["breed"]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
