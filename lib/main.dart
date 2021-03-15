import 'package:flutter/material.dart';

void main() {
  runApp(MoodoApp());
}

class MoodoApp extends StatefulWidget {
  @override
  _MoodoAppState createState() => _MoodoAppState();
}

class _MoodoAppState extends State<MoodoApp> {
  final String bgPagi = "images/bgPagi.png";
  final String bgMalam = "images/bgMalam.png";

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
                  image: DecorationImage(
                      image: AssetImage(bgPagi), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
