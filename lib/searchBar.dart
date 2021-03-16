import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Container(
              width: context.widthPct(.8),
              height: context.widthPct(.8) / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Color(0xff0e4764),
              ),
              child: Container(
                  child: Theme(
                data: new ThemeData(
                  primaryColor: Color(0xff0e4764),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(24, 16, 24, 24),
                      hintText: "Cari doa di sini",
                      hintStyle: TextStyle(color: Colors.grey[100]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              new BorderSide(color: Color(0xff0e4764)))),
                ),
              ))),
        ),
      ),
    );
  }
}
