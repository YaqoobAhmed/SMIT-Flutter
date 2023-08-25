import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> todoList = [];
  TextEditingController addList = TextEditingController();
  TextEditingController updateList = TextEditingController();

  void newEntry() {
    setState(() {
      todoList.add(addList.text);
      addList.clear();
    });
  }

  void updateEntry() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 172, 70, 1),
        title: Text("ToDo List App"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green[300],
            child: ListTile(
              title: TextField(
                  autofocus: true,
                  controller: addList,
                  decoration: const InputDecoration(
                    hintText: 'Enter An item',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(
                              7, 172, 70, 25)), // Set the desired color
                    ),
                  )),
              trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(7, 172, 70, 25),
                  ),
                  onPressed: () {
                    newEntry();
                  },
                  child: const Text("Add")),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: const Color.fromARGB(166, 165, 214, 167),
                      title: Text(todoList[index]),
                      trailing: Wrap(children: [
                        IconButton(
                            iconSize: 25,
                            onPressed: () {
                              updateList.text = todoList[index];
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Update List"),
                                    content: TextField(
                                      controller: updateList,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              todoList[index] = updateList.text;
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: Text("Update")),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                todoList.removeAt(index);
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
          ),
        ],
      ),
    );
  }
}
