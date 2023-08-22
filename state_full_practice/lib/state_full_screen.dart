import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> nameList = [];
  TextEditingController addname = TextEditingController();

  void newEntry() {
    setState(() {
      nameList.add(addname.text);
      addname.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: addname,
          decoration: const InputDecoration(
            hintText: 'Enter your Name',
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                newEntry();
              },
              child: const Text("Add"))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.amber,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: nameList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                      tileColor: Colors.green[100],
                      title: Text(nameList[index]),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              nameList.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete))),
                  SizedBox(
                    height: 1.5,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
