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
  Future<List<PostModel>> getPosts() async {
    List<PostModel> allPost = [];
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    for (var i in responseBody) {
      allPost.add(PostModel.fromJson(i));
    }
    return allPost;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          builder:
              ((BuildContext context, AsyncSnapshot<List<PostModel>> snapshot) {
            //AsyncSnapshot is mention here to define type that is future so that it can capture data length
            if (snapshot.hasData) {
              return ListTile(
                title: Text(snapshot.data![0].title!),
                subtitle: Text(snapshot.data![0].body!),
                leading: Text(
                  '${snapshot.data![0].id!}',
                  style: TextStyle(fontSize: 30),
                ),
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
