import 'package:ficus_root/userdetail.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<String> getData() async {
    String url = "https://jsonplaceholder.typicode.com/users";
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      users = json.decode(response.body);
    });
    print(users);
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemExtent: 100.0,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserDetail(
                      id: users[i]['name'][0],
                      name: users[i]['name'],
                      username: users[i]['username'],
                      email: users[i]['email'],
                      phone: users[i]['phone'],
                      address: users[i]['address'],
                    )));
          },
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Text("${users[i]['name'][0]}".toUpperCase()),
              ),
              title: Text("${users[i]['name']}"),
              subtitle: Text("${users[i]['website']}"),
            ),
          ),
        );
      },
    );
  }
}
