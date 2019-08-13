import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // Container with redAccent background color
          Container(
            color: Colors.redAccent,
            height: 300.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                      ),
                      Icon(
                        FontAwesomeIcons.bars,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "less",
                              style: _style(),
                            ),
                          ),
                          Container(
                            child: Text(
                              "but",
                              style: _style(),
                            ),
                          ),
                          Container(
                            child: Text(
                              "better",
                              style: _style(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        // Showing Profile Picture
                        Container(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: ClipOval(
                            child: Image.asset(
                              "images/ramu.jpg",
                              height: 130.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            "RAMU",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Bugudi Ramu",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      child: Text(
                        "Mobile Developer",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 25.0, right: 25.0),
            child: Divider(
              height: 40.0,
              color: Colors.grey,
            ),
          ),
          //Start: Showing Horizontal ListView
          Container(
            height: 230.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          maxRadius: 70.0,
                          backgroundColor: Colors.pink.shade100,
                          child: Image.asset(
                            "images/photo1.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: Container(
                          child: Text(
                            "Ramu",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Portable Computer"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Rs.200"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          maxRadius: 70.0,
                          backgroundColor: Colors.pink.shade100,
                          child: Image.asset(
                            "images/photo2.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: Container(
                          child: Text(
                            "Ramu",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Photo"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Rs.200"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          maxRadius: 70.0,
                          backgroundColor: Colors.pink.shade100,
                          child: Image.asset(
                            "images/photo3.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: Container(
                          child: Text(
                            "Ramu",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Early Bitcoin"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Rs.200"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          maxRadius: 70.0,
                          backgroundColor: Colors.pink.shade100,
                          child: Image.asset(
                            "images/photo4.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: Container(
                          child: Text(
                            "Ramu",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("I Write Code"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Rs.200"),
                      ),
                    ],
                  ),
                ),

                //End: Showing Horizontal ListView
              ],
            ),
          )
        ],
      ),
    );
  }

  _style() {
    return TextStyle(
      fontSize: 55.0,
      fontWeight: FontWeight.bold,
    );
  }
}
