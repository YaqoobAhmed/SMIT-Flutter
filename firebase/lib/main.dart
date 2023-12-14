import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/Views/Login/login.dart';
import 'package:firebase/Views/Mainpage/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  //to fatch data
  // QuerySnapshot snapshot =
  //     await FirebaseFirestore.instance.collection("user").get();
  // for (var doc in snapshot.docs) {
  //   print(doc.data().toString());
  // }

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Map<String, dynamic> newuserdata = {
    "name": "Yaqoob",
    "mail": "yaqoob@gmail.com"
  };
  await _firestore.collection("user").add(newuserdata);
  print("new user added");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null)
          ? HomeView()
          : LoginView(),
    );
  }
}
