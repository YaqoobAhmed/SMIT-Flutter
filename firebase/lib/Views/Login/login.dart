import 'package:firebase/Views/Mainpage/mainveiw.dart';
import 'package:firebase/Views/Register/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false; // Added a boolean to manage loading state

  Future<void> login() async {
    String emailAddress = emailController.text.trim();
    String password = passwordController.text.trim();

    if (emailAddress.isEmpty || password.isEmpty) {
      print("Please fill all fields");
      return;
    }

    try {
      setState(() {
        isLoading =
            true; // Set loading state to true when starting login process
      });

      // ignore: unused_local_variable
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      // After successful login, navigate to the HomeView
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } finally {
      setState(() {
        isLoading = false; // Set loading state to false after login attempt
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text("Login Page"),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: "Email",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: "Password",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: login,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  Text("Already have an account ? "),
                  GestureDetector(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.green.shade700),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => RegisterView(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
          // Conditionally show CircularProgressIndicator based on isLoading
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.lightGreen,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
