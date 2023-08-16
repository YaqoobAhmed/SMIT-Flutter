import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("WhatsApp"),
      ),
      body: const ListTile(
        tileColor: Colors.lightGreenAccent,
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage("assets/images/whatsapp.png"),
        ),
        title: Text("Yaqoob"),
        subtitle: Text("Han kidhr ho ?"),
        trailing: Text("2:32 PM"),
      ),
    );
  }
}
