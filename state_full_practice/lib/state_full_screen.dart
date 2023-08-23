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
          autofocus: true,
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
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                tileColor: Colors.green[200],
                title: Text(nameList[index]),
                trailing: Wrap(children: [
                  IconButton(
                      iconSize: 25,
                      onPressed: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Update Name"),
                                content: TextField(
                                  controller: addname,
                                ),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        nameList[index] = "updated";
                                      },
                                      child: Text("Edit")),
                                ],
                              );
                            },
                          );
                        });
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          nameList.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete)),
                ]),
              ),
              const SizedBox(
                height: 1.5,
              )
            ],
          );
        },
      ),
    );
  }
}
