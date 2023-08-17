import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const ChatWidget(
      {super.key,
      required this.name,
      required this.message,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage("assets/images/whatsapp.png"),
          ),
          title: Text(name),
          subtitle: Text(
            message,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(
            time,
            style: const TextStyle(
                fontStyle: FontStyle.italic, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
