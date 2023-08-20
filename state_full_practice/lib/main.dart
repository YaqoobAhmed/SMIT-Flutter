import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

// class Screen extends StatefulWidget {
//   const Screen({super.key});

//   @override
//   State<Screen> createState() => _ScreenState();
// }

// class _ScreenState extends State<Screen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Statefull Class"),
//         backgroundColor: Colors.greenAccent,
//         foregroundColor: Colors.black45,
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             tileColor: Colors.green[100],
//             title: const Text("Name"),
//             subtitle: const Text("message"),
//             leading: const CircleAvatar(
//               radius: 25,
//               backgroundColor: Colors.amberAccent,
//             ),
//             trailing:
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
//           ),
//           Container(
//             height: 1,
//             color: Colors.black26,
//           ),
//           ListTile(
//             tileColor: Colors.green[100],
//             title: const Text("Name"),
//             subtitle: const Text("message"),
//             leading: const CircleAvatar(
//               radius: 25,
//               backgroundColor: Colors.amberAccent,
//             ),
//             trailing:
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.green[100],
            title: Text(nameList[index]),
          );
        },
      ),
    );
  }
}
