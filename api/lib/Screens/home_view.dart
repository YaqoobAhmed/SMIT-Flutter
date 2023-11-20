import 'dart:convert';

import 'package:api/Models/PostModel.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<PostModel> getPosts() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    return PostModel.fromJson(responseBody);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          builder: ((context, AsyncSnapshot<PostModel> snapshot) {
            //AsyncSnapshot is mention here to define type that is future so that it can capture data length
            if (snapshot.hasData) {
              return ListTile(
                title: Text(snapshot.data!.title!),
                subtitle: Text(snapshot.data!.body!),
                leading: Text('${snapshot.data!.id!}'),
              );
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            );
          }),
          future: getPosts(),
        ),
      ),
    );
  }
}
