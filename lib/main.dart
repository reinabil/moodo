import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:moodo/homePage.dart';

void main() {
  runApp(MoodoApp());
}

class MoodoApp extends StatefulWidget {
  @override
  _MoodoAppState createState() => _MoodoAppState();
}

class _MoodoAppState extends State<MoodoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueGrey,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
            },
          ),
          body: HomePage()),
    );
  }
}
