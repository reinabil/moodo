import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';
import 'ListDoaBaik.dart';

// ignore: camel_case_types
class Detail_ListDoaBaik extends StatefulWidget {
  @override
  _Detail_ListDoaBaikState createState() => _Detail_ListDoaBaikState();
}

// ignore: camel_case_types
class _Detail_ListDoaBaikState extends State<Detail_ListDoaBaik> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.heightPct(0.1)),
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Positioned.fill(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: context.heightPct(0.05),
                        width: context.heightPct(0.05),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [Color(0xff65db9f), Color(0xff3da0a6)],
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 67, 169, 165),
                                  offset: Offset(1, 2),
                                  blurRadius: 3)
                            ],
                            borderRadius: BorderRadius.circular(100)),
                        margin: EdgeInsets.all(10),
                        child: Material(
                          color: Colors.transparent,
                          shadowColor: Color.fromARGB(255, 142, 211, 73),
                          borderRadius: BorderRadius.circular(100),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: Material(
                            color: Colors.transparent,
                            shadowColor: Color.fromARGB(255, 142, 211, 73),
                            borderRadius: BorderRadius.circular(100),
                            child: Icon(
                              Icons.share,
                              color: Colors.grey,
                            ),
                          ),
                        )),
                  ),
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: context.heightPct(0.05),
                            width: context.heightPct(0.05),
                            margin: EdgeInsets.all(10),
                            child: Material(
                              color: Colors.transparent,
                              shadowColor: Color.fromARGB(255, 142, 211, 73),
                              borderRadius: BorderRadius.circular(100),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
      body: Stack(children: <Widget>[
        Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Color(0xff65db9f), Color(0xff3da0a6)],
            ))),
        Container(
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(56, 16, 56, 16),
                child: Text(
                  "Doa agar selalu bersyukur",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24),
                child: Text(
                  "Lafaz Doa",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 7,
                  shadowColor: Color.fromARGB(255, 63, 164, 165),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    child: Column(
                      children: [
                        Text(
                          "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Insert Romanji Here.",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "Arti Doa",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 7,
                  shadowColor: Color.fromARGB(255, 63, 164, 165),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    padding: EdgeInsets.all(24),
                    child: Text(
                      "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
                      style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, top: 24),
                child: Text(
                  "Tentang Doa",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 7,
                  shadowColor: Color.fromARGB(255, 63, 164, 165),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    child: Text(
                      "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. ",
                      style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 32,
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
