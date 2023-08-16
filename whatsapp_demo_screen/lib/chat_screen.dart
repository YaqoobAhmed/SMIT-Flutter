import 'package:flutter/material.dart';
import 'package:whatsapp_demo_screen/chat_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("WhatsApp"),
      ),
      body: const Column(
        children: [ChatWidget(), ChatWidget(), ChatWidget()],
      ),
    );
  }
}
