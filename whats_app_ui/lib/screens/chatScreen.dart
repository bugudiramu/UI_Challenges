import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messages = List<String>.generate(20, (i) => "Ramu");
  final String _time = "5:26 PM";
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _messages.length,
      itemBuilder: (_, int index) {
        return Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF075e54),
                child: Image.network(
                    "https://lh3.googleusercontent.com/-G9r9UWkAoOQ/WtBNmEBddtI/AAAAAAAAFGQ/I_SEaGIi4xYSPICKymsY4DOl0pOcc1VUQCEwYBhgL/w140-h140-p/roar_r_logo_1.png"),
              ),
              title: Text("${_messages[index]}"),
              subtitle: Text("Message from 8919308004"),
              trailing: Text(_time),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
