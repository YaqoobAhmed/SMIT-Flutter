import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void RegisterUser() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cPasswordController.text.trim();
    String phone = phoneController.text.trim();

    if (name == "" || email == "" || password == "" || cPassword == "") {
      print("Please fill all fields");
    } else if (password != cPassword) {
      print("Password does not match");
    } else {
      try {
        // ignore: unused_local_variable
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        //fore storing user info
        FirebaseFirestore _firestore = FirebaseFirestore.instance;
        Map<String, dynamic> userdata = {
          "name": name,
          "email": email,
          "phone": phone
        };
        await _firestore.collection("user").add(userdata);

        print("User created");
        Navigator.pop(context);
      } on FirebaseAuthException catch (ex) {
        print(ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text("Signup Page"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.lightGreen),
                    iconColor: Colors.lightGreen,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    icon: Icon(Icons.person),
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.lightGreen),
                    iconColor: Colors.lightGreen,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    icon: Icon(Icons.email),
                    labelText: "Email",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.lightGreen),
                    iconColor: Colors.lightGreen,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    icon: Icon(Icons.phone),
                    labelText: "phone",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.lightGreen),
                    iconColor: Colors.lightGreen,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    icon: Icon(Icons.lock),
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: cPasswordController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.lightGreen),
                    iconColor: Colors.lightGreen,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    icon: Icon(Icons.lock),
                    labelText: "Confirm Password",
                  ),
                )
              ],
            ),
          )),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: RegisterUser,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Text(
                  "Signup",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
