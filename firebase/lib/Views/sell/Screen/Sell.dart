import 'package:firebase/colors.dart';
import 'package:flutter/material.dart';

class SellScreen extends StatelessWidget {
  SellScreen({super.key});

  TextEditingController birdNameControlle = TextEditingController();
  TextEditingController breedControlle = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController priceController = TextEditingController();

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
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      // controller: nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        iconColor: blueColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        suffixIcon: Icon(
                          Icons.person,
                          color: blueColor,
                        ),
                        labelText: "Full Name",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        iconColor: blueColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        suffixIcon: Icon(
                          Icons.email,
                          color: blueColor,
                        ),
                        labelText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        iconColor: blueColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: blueColor,
                        ),
                        labelText: "phone",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      //  controller: passwordController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        iconColor: blueColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        suffixIcon: Icon(
                          Icons.lock,
                          color: blueColor,
                        ),
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      // controller: cPasswordController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: blueColor),
                        iconColor: blueColor,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        suffixIcon: Icon(
                          Icons.lock,
                          color: blueColor,
                        ),
                        labelText: "Confirm Password",
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      // onTap: RegisterUser,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            color: blueColor,
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
              ),
            )),
          ),

          // Conditionally show CircularProgressIndicator based on isLoading
          // if (isLoading)
          //   Container(
          //     color: Colors.black.withOpacity(0.5),
          //     child: Center(
          //       child: CircularProgressIndicator(
          //         color: blueColor,
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
