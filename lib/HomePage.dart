import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String bgPagi = 'images/bgPagi.png';
  final String bgMalam = 'images/bgMalam.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(bgPagi), fit: BoxFit.cover)))
          ],
        ),
      ),
    );
  }
}
