import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      tileColor: Colors.lightGreenAccent,
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage("assets/images/whatsapp.png"),
      ),
      title: Text("Yaqoob"),
      subtitle: Text(
        "Han kidhr ho ? aj kal nazar hi nahi a rhae yaar kahan gaib ho?",
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        "2:32 PM",
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }
}
