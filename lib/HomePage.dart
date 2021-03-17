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
  final String bgBunga = 'images/bgBunga.png';

  final TextStyle header = TextStyle(
    color: Color(0xff2e3c40),
    fontSize: 34,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
  );
  final TextStyle title1 = TextStyle(
    color: Colors.black,
    fontSize: 28,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
  );
  final TextStyle title2 = TextStyle(
    color: Color(0xff2e3c40),
    fontSize: 22,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
  );
  final TextStyle headline = TextStyle(
    color: Colors.black,
    fontFamily: "Poppins",
    fontSize: 20,
  );
  final TextStyle body = TextStyle(
    color: Colors.black,
    fontFamily: "Poppins",
    fontSize: 14,
  );
  final TextStyle caption = TextStyle(
    color: Colors.black,
    fontFamily: "Poppins",
    fontSize: 12,
  );

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
                        image: AssetImage(bgBunga), fit: BoxFit.cover))),
            Container(
              margin: EdgeInsets.fromLTRB(40, 80, 40, 40),
              child: Column(
                children: [
                  Text("Assalamualaikum", style: title1),
                  Text(
                    "Selasa, 16 April 2021",
                    style: body,
                  ),
                  Text(
                    "2 Shaban 1442",
                    style: caption,
                  ),
                  // Container(
                  //   height: context.heightPct(.2),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 0),
                    width: context.widthPct(.8),
                    height: context.heightPct(.30) * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xffef5326),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x54ef5325),
                          blurRadius: 13,
                          offset: Offset(0, 7),
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, Color(0xeaffffff)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.15,
                maxChildSize: 0.6,
                minChildSize: 0.15,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(100, 42, 146, 117),
                            blurRadius: 6.0,
                            offset: Offset(0, -7),
                          )
                        ]),
                    child: ListView(
                      controller: s,
                      children: <Widget>[
                        Center(
                            child: Container(
                          margin: EdgeInsets.only(top: 8),
                          width: context.widthPct(0.2) - 15,
                          height: context.heightPct(0.1) / 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[400],
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 16),
                          child: Text("Gimana mood-mu?",
                              textAlign: TextAlign.center, style: title2),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 16, 8, 8),
                          width: context.widthPct(.8),
                          height: context.widthPct(.8) / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xffef5326)),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        Container(
                            margin: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MoodButtonBaik(
                                    Color.fromARGB(255, 255, 189, 170),
                                    Color.fromARGB(255, 255, 236, 170)),
                                MoodButtonNetral(
                                    Color.fromARGB(255, 255, 189, 170),
                                    Color.fromARGB(255, 255, 236, 170)),
                                MoodButtonBuruk(
                                    Color.fromARGB(255, 255, 189, 170),
                                    Color.fromARGB(255, 255, 236, 170)),
                              ],
                            )),
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
