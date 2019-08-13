import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _circleBtn(String btnText) {
    return Expanded(
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          minRadius: 38.0,
          child: Text(
            "$btnText",
            style: _btnStyle(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Calculator"),
      //   elevation: 0.0,
      //   backgroundColor: Color(0XCCF4511E),
      //   centerTitle: true,
      // ),
      body: Container(
        color: Colors.grey.shade900,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topRight,
              child: Text(
                "99",
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),

            // RoundedButtons
            Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              // height: 400.0,
              child: Column(
                children: <Widget>[
                  //First Row
                  Row(
                    children: <Widget>[
                      _circleBtn("AC"),
                      _circleBtn("+/-"),
                      _circleBtn("%"),
                      Expanded(
                        child: InkWell(
                          child: CircleAvatar(
                            backgroundColor: Color(0XCCF4511E),
                            minRadius: 38.0,
                            child: Text(
                              "C",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Second Row
                  Row(
                    children: <Widget>[
                      _circleBtn("7"),
                      _circleBtn("8"),
                      _circleBtn("9"),
                      Expanded(
                        child: InkWell(
                          child: CircleAvatar(
                            backgroundColor: Color(0XCCF4511E),
                            minRadius: 38.0,
                            child: Text(
                              "x",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Third Row
                  Row(
                    children: <Widget>[
                      _circleBtn("4"),
                      _circleBtn("5"),
                      _circleBtn("6"),
                      Expanded(
                        child: InkWell(
                          child: CircleAvatar(
                            backgroundColor: Color(0XCCF4511E),
                            minRadius: 38.0,
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //Fourth Row
                  Row(
                    children: <Widget>[
                      _circleBtn("1"),
                      _circleBtn("2"),
                      _circleBtn("3"),
                      Expanded(
                        child: InkWell(
                          child: CircleAvatar(
                            backgroundColor: Color(0XCCF4511E),
                            minRadius: 38.0,
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Fifth Row
                  Row(
                    children: <Widget>[
                      _circleBtn("0"),
                      _circleBtn("."),
                      _circleBtn("/"),
                      Expanded(
                        child: InkWell(
                          child: CircleAvatar(
                            backgroundColor: Color(0XCCF4511E),
                            minRadius: 38.0,
                            child: Text(
                              "=",
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _btnStyle() {
    return TextStyle(
      fontSize: 38.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
}
