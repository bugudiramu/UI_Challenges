import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Albums extends StatefulWidget {
  @override
  _AlbumsState createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  List albums = [];
  int currentLen = 0;
  int increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
    // _getMoreData();
  }

/*
  Future _getMoreData() async {
    setState(() {
      isLoading = true;
    });
    for (int i = currentLen; i <= currentLen + increment; i++) {
      albums.add(i);
    }
    setState(() {
      isLoading = false;
      currentLen = albums.length;
    });
  }*/

  Future<String> getData() async {
    String url = "https://jsonplaceholder.typicode.com/photos";
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    // if (mounted) {
    setState(() {
      albums = json.decode(response.body);
    });
    // }

    print(albums);
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: albums.length + 1,
      itemBuilder: (context, i) {
        if (i == albums.length) {
          return Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              title: Image.network(
                "${albums[i]['thumbnailUrl']}",
                fit: BoxFit.cover,
              ),
              subtitle: Text("${albums[i]['title']}",
                  style: Theme.of(context).textTheme.title),
            ),
          ),
        );
      },
    );
  }
}
