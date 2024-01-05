import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/Views/Onboarding/Screen/onboarding.dart';
import 'package:firebase/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class SellScreen extends StatefulWidget {
  SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  TextEditingController titleControlle = TextEditingController();
  TextEditingController breedControlle = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();
  bool isLoading = false;
  File? birdPick;

  void AddPost() async {
    String title = titleControlle.text.trim();
    String breed = breedControlle.text.trim();
    String contact = contactController.text.trim();
    String age = ageController.text.trim();
    String price = priceController.text.trim();
    String address = addressController.text.trim();
    String discription = discriptionController.text.trim();

    if (title == "" ||
            breed == "" ||
            contact == "" ||
            age == "" ||
            price == "" ||
            address == "" ||
            discription == ""
        // ||
        // birdPick == null
        ) {
      print("Please fill all fields");
    } else {
      try {
        setState(() {
          isLoading = true;
        });

        // UploadTask uploadTask = FirebaseStorage.instance
        //     .ref()
        //     .child("birdPictures")
        //     .child(Uuid().v1())
        //     .putFile(birdPick!);

        // TaskSnapshot taskSnapshot = await uploadTask;
        // String donwnloadUrl = await taskSnapshot.ref.getDownloadURL();

        //fore storing user info
        FirebaseFirestore _firestore = FirebaseFirestore.instance;
        Map<String, dynamic> sellData = {
          "name": title,
          "breed": breed,
          "contact": contact,
          "age": age,
          "price": price,
          "address": address,
          "discription": discription,
        }; // "birdPick": donwnloadUrl
        await _firestore.collection("adds").add(sellData);

        print("Add posted");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding()));
      } on FirebaseAuthException catch (ex) {
        print(ex.code.toString());
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        backgroundColor: blueColor,
        title: Text(
          "Enter Details",
          style: TextStyle(color: whiteColor),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Stack(),
                    TextFormField(
                      controller: titleControlle,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        labelText: "Title:",
                      ),
                    ),

                    TextFormField(
                      controller: breedControlle,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        labelText: "Breed:",
                      ),
                    ),

                    TextFormField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: blueColor),
                          labelText: "Age:",
                          hintText: "1.2"),
                    ),

                    TextFormField(
                      controller: discriptionController,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        labelText: "Discription:",
                      ),
                    ),

                    TextFormField(
                      controller: contactController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        labelText: "Contact:",
                      ),
                    ),

                    TextFormField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        labelText: "Price:",
                      ),
                    ),

                    TextFormField(
                      controller: addressController,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        labelText: "Address:",
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: AddPost,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            "Add Post",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),

          //Conditionally show CircularProgressIndicator based on isLoading
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(
                  color: blueColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
