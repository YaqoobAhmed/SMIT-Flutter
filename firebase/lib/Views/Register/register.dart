import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: Center(
          child: Text("Signup Page"),
        ),
      ),
    );
  }
}
