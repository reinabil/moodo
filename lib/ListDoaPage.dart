import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class ListDoaPage extends StatefulWidget {
  @override
  _ListDoaPageState createState() => _ListDoaPageState();
}

class _ListDoaPageState extends State<ListDoaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xff65db9f), Color(0xff3da0a6)],
                ),
              ),
            ),
            //Isi List Doa
            Container(
              margin: EdgeInsets.only(top: 60 + 60 + context.widthPct(.8) / 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 96, 96, 96),
                    blurRadius: 17,
                    offset: Offset(0, -7),
                  ),
                ],
                color: Colors.white,
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                      child: Text(
                    "Doa dan Dzikir Sholat",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
                ],
              ),
            ),
            //Search Bar
            SingleChildScrollView(
              child: Center(
                child: Container(
                    margin: EdgeInsets.only(top: 60),
                    width: context.widthPct(.8),
                    height: context.widthPct(.8) / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: Colors.grey[200],
                    ),
                    child: Container(
                        child: Theme(
                      data: new ThemeData(
                        primaryColor: Colors.grey[300],
                      ),
                      child: TextField(
                        autofocus: false,
                        style: TextStyle(
                            color: Colors.grey[700], fontFamily: "Poppins"),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey[700],
                            ),
                            contentPadding: EdgeInsets.fromLTRB(24, 16, 24, 24),
                            hintText: "Cari doa dulu yuk",
                            hintStyle: TextStyle(
                                color: Colors.grey[700], fontFamily: "Poppins"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(300),
                                borderSide:
                                    new BorderSide(color: Colors.grey[300]))),
                      ),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
