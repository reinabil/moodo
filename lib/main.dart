import 'package:flutter/material.dart';

void main() {
  runApp(MoodoApp());
}

class MoodoApp extends StatefulWidget {
  @override
  _MoodoAppState createState() => _MoodoAppState();
}

class _MoodoAppState extends State<MoodoApp> {
  final String bgPagi = "assets/bgPagi.png";
  final String bgMalam = "assets/bgMalam.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          //draggableScrollableSheet
          //background
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/bgPagi.png"))),
            )
          ],
        ),
      ),
    );
  }
}
