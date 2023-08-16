import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 88, 36),
          leading: const Center(
            child: Text(
              "leading",
              textAlign: TextAlign.right,
            ),
          ),
          title: const Center(
            child: Text(
              " App Title",
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.cyanAccent,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.deepPurpleAccent,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.indigo,
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.lightBlueAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.indigo,
                height: 100,
                width: 100,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.indigo,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.indigo,
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
