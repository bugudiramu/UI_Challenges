import 'package:flutter/material.dart';
import '../screens/cameraScreen.dart';
import '../screens/chatScreen.dart';
import '../screens/statusScreen.dart';
import '../screens/callsScreen.dart';

class HomePage extends StatefulWidget {
  final cameras;
  HomePage(this.cameras);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 1, vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whats_App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075e54),
        accentColor: Color(0xFF075e54),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          elevation: 0.7,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: Container(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              CameraScreen(widget.cameras),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.message,
          ),
          backgroundColor: Color(0xFF25d366),
          tooltip: "Send a Message",
          onPressed: () => debugPrint("FAB Pressed!"),
        ),
      ),
    );
  }
}
