import 'package:ficus_root/tabs/albumtab.dart';
import 'package:ficus_root/tabs/usertab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
          appBar: AppBar(
            title: Text("FICUSROOT"),
            centerTitle: true,
            backgroundColor: Colors.redAccent,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text("Users".toUpperCase()),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text("Albums".toUpperCase()),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Users(),
              Albums(),
            ],
          )),
      length: 2,
    );
  }
}
