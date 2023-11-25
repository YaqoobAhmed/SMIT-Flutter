import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> todoList = [];
  TextEditingController addList = TextEditingController();
  TextEditingController updateList = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlist();
  }

  getlist() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    todoList = prefs.getStringList("list") ?? [];
    setState(() {});
  }

  void newEntry() async {
    todoList.add(addList.text);
    addList.clear();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("list", todoList);
    setState(() {});
  }

  UpdateEntry(index) {
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
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text("ToDo List App"),
        ),
        body: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.secondary,
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
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () async {
                      newEntry();
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        tileColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        title: Text(todoList[index]),
                        trailing: Wrap(children: [
                          IconButton(
                              iconSize: 25,
                              onPressed: () {
                                UpdateEntry(index);
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
      ),
    );
  }
}
