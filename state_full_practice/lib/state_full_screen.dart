import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> nameList = [
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
    '.',
  ];
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
      body: Column(
        children: [
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.lightBlue,
              child: const Column(
                children: [
                  Text(
                    "Enter your Names here",
                  ),
                  Text(
                    "Your data is save with us",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: Colors.green[100],
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            index.toString(),
                          ),
                          IconButton(
                              style: ButtonStyle(alignment: Alignment.topRight),
                              onPressed: () {
                                setState(() {
                                  nameList.removeAt(index);
                                });
                              },
                              icon: const Icon(Icons.delete)),
                        ],
                      ),
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
