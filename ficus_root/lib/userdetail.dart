import 'package:flutter/material.dart';

class UserDetail extends StatefulWidget {
  final String id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final Map address;

  UserDetail({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.address,
  });
  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserDetail"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                maxRadius: 50.0,
                backgroundColor: Colors.redAccent,
                child: Text("${widget.name[0]}".toUpperCase(),
                    style: TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "${widget.username}",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.email}",
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            alignment: Alignment.topLeft,
            child: Text(
              "Contact Details:",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20.0)),
              height: 200.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text("Phone : ${widget.phone}"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Address : ",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text("Street : ${widget.address['street']}"),
                      Text("Suite : ${widget.address['suite']}"),
                      Text("City : ${widget.address['city']}"),
                      Text("ZipCode : ${widget.address['zipcode']}"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
