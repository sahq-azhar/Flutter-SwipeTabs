import 'package:flutter/material.dart';

//Our Category Data Object
class Category {
  const Category({this.name, this.icon});
  final String name;
  final IconData icon;
}

// List of Category Data objects.
const List<Category> categories = <Category>[
  Category(name: 'TAB1', icon: Icons.home),
  Category(name: 'TAB2', icon: Icons.line_style),
  Category(name: 'TAB3', icon: Icons.toys),
  Category(name: 'TAB4', icon: Icons.info),
  Category(name: 'TAB5', icon: Icons.mail),
];

// Our Tabs class..Will build and return our app structure.
class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink[800],
        accentColor: Colors.amber[600], //this will change the indicator color
      ),
      home: new DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: new AppBar(
            //backgroundColor: Colors.amber,
            title: const Text('TABS'),
            bottom: new TabBar(
              //indicatorColor: Colors.lime, //also indicator color can be changed from here
              tabs: categories.map((Category choice) {
                return new Tab(
                  text: choice.name,
                  icon: new Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: [
              Text("Please dont scroll this side",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Text("i said dont scroll",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Text("warning you...dont",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Text("regret it",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
              Text("what did you achieve scrolling all till here??",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// Our main method
void main() {
  runApp(new Tabs());
}

//end
