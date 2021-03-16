import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';
import 'MoodButtonBaik.dart';
import 'MoodButtonNetral.dart';
import 'MoodButtonBuruk.dart';

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
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(bgPagi), fit: BoxFit.cover))),
            Container(
              margin: EdgeInsets.all(40),
              child: ListView(
                children: [
                  Text(
                    "Assalamualaikum",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "5 Ramadhan 1445 H | 15 April 2021",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  // Container(
                  //   height: context.heightPct(.2),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 0),
                    width: context.widthPct(.8),
                    height: context.heightPct(.30) * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.15,
                maxChildSize: 0.5,
                minChildSize: 0.15,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x6d246a85),
                            blurRadius: 6.0,
                            offset: Offset(0, -7),
                          )
                        ]),
                    child: ListView(
                      controller: s,
                      children: <Widget>[
                        Center(
                            child: Container(
                          margin: EdgeInsets.only(top: 16),
                          width: context.widthPct(0.2) - 15,
                          height: context.heightPct(0.1) / 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[400],
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 16),
                          child: Text("Bagaimana perasaanmu hari ini?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 16, 8, 8),
                          width: context.widthPct(.8),
                          height: context.widthPct(.8) / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        Container(
                            margin: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MoodButtonBaik(Color.fromARGB(255, 14, 71, 100),
                                    Colors.grey[200]),
                                MoodButtonNetral(
                                    Color.fromARGB(255, 14, 50, 100),
                                    Colors.grey[200]),
                                MoodButtonBuruk(Color.fromARGB(255, 14, 71, 50),
                                    Colors.grey[200]),
                              ],
                            ))
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
