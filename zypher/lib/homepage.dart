import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List authors = [];
  List themes = [];
  List categories = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<String> getData() async {
    String url = "https://newprod.zypher.co/books/getHomePage";
    http.Response response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      var jsonData = json.decode(response.body);
      authors = jsonData['authors'];
      themes = jsonData['themes'];
      categories = jsonData['category'];
    });
    print(authors[0]['_id']);

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          CustomAppBar(),
          Divider(
            height: 5.0,
            color: Colors.black,
          ),
          Authors(height: height, authors: authors),
          SizedBox(height: 2.0),
          Themes(height: height, themes: themes),
          SizedBox(height: 2.0),
          Categories(height: height, categories: categories),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
          "#Zypher".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        leading: Icon(Icons.menu),
        trailing: CircleAvatar(
          backgroundColor: Colors.lightBlue,
          child: Text(
            "R",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Themes extends StatelessWidget {
  const Themes({
    Key key,
    @required this.height,
    @required this.themes,
  }) : super(key: key);

  final double height;
  final List themes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 5,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(
          left: BorderSide(
            color: Colors.grey.shade400,
            width: 3.0,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Popular Vacations",
              style: _headerStyle(context),
            ),
          ),
          Container(
            height: 130.0,
            child: ListView.builder(
              itemCount: themes == null ? 0 : themes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "${themes[index]['themeImageURL']}",
                          filterQuality: FilterQuality.low,
                          color: Colors.black26,
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Text(
                        "${themes[index]['themeName']}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                      bottom: 40.0,
                      left: 20.0,
                    ),
                    Positioned(
                      top: 100.0,
                      right: 10.0,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _headerStyle(context) {
    return TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.height,
    @required this.categories,
  }) : super(key: key);

  final double height;
  final List categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            "Explore By Categories",
            style: _headerStyle(context),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          // height: 260.0,
          height: height / 2.5,
          child: GridView.builder(
            itemCount: categories == null ? 0 : categories.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 10.0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "${categories[index]['displayName']}".toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.network(
                        "${categories[index]['categoryImageURL']}",
                        filterQuality: FilterQuality.low,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  _headerStyle(context) {
    return TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
    );
  }
}

class Authors extends StatelessWidget {
  const Authors({
    Key key,
    @required this.height,
    @required this.authors,
  }) : super(key: key);

  final double height;
  final List authors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 4.5,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.blue,
            width: 3.0,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Authors",
              style: _headerStyle(context),
            ),
          ),
          Container(
            height: 130.0,
            child: ListView.builder(
              itemCount: authors == null ? 0 : authors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Wrap(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 80.0,
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            minRadius: 32.0,
                            backgroundColor: Colors.lightBlue,
                            backgroundImage: NetworkImage(
                                "${authors[index]['authorImageURL']}"),
                            // radius: 20.0,
                          ),
                          Text(
                            "${authors[index]['authorName']}",
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _headerStyle(context) {
    return TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
    );
  }
}
