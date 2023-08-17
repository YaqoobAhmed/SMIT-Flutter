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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StatusScreen(),
                      ));
                },
                child: Text("Status")),
            const ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
            ChatWidget(
              name: "Yaqoob",
              message: "aja mai hawaon mai ura ke leke chalun tujhko",
              time: "2:37",
            ),
          ],
        ),
      ),
    );
  }
}
