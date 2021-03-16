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
      home: Scaffold(bottomNavigationBar: navbar(), body: HomePage()),
    );
  }

  CurvedNavigationBar navbar() {
    return CurvedNavigationBar(
      color: Color.fromARGB(255, 14, 71, 100),
      backgroundColor: Colors.white,
      items: <Widget>[
        Icon(
          Icons.home_rounded,
          size: 30,
          color: Colors.grey[50],
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.grey[50],
        ),
        Icon(
          Icons.favorite_rounded,
          size: 30,
          color: Colors.grey[50],
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
