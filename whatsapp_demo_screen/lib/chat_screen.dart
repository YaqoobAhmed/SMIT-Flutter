import 'package:flutter/material.dart';
import 'package:whatsapp_demo_screen/chat_widget.dart';
import 'package:whatsapp_demo_screen/status_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 211, 102),
        title: const Text("WhatsApp"),
        leading: const Icon(
          Icons.contacts,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                  shadowColor: Colors.green,
                  shape: OvalBorder(),
                  side: BorderSide(color: Colors.black),
                  surfaceTintColor: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StatusScreen(),
                      ));
                },
                child: Text("Status")),
            ChatWidget(name: "Yaqoob", message: "name kia hai", time: "time")
          ],
        ),
      ),
    );
  }
}
