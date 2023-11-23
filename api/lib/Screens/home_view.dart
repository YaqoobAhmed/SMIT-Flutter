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
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts');
    var response = await http.get(url);
    var responseBody = jsonDecode(response.body);
    for (var i in responseBody) {
      allPost.add(PostModel.fromJson(i));
      setState(() {});
    }
    return allPost;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        title: Center(
            child: Text(
          "Api Get",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
        )),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: FutureBuilder(
          builder:
              ((BuildContext context, AsyncSnapshot<List<PostModel>> snapshot) {
            //AsyncSnapshot is mention here to define type that is future so that it can capture data length
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].title!),
                  subtitle: Text(snapshot.data![index].body!),
                  leading: Text(
                    '${snapshot.data![index].id!}',
                    style: TextStyle(fontSize: 30),
                  ),
                );
              });
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
