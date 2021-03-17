import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class MoodButtonNetral extends StatefulWidget {
  Color mainColor, secondColor;
  @override
  _MoodButtonNetralState createState() =>
      _MoodButtonNetralState(mainColor, secondColor);
  MoodButtonNetral(this.mainColor, this.secondColor);
}

class _MoodButtonNetralState extends State<MoodButtonNetral> {
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
  bool isPressed = false;
  Color mainColor, secondColor;
  _MoodButtonNetralState(this.mainColor, this.secondColor);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(20),
            elevation: (isPressed) ? 5 : 10,
            shadowColor: (isPressed) ? secondColor : mainColor,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: context.widthPct(.25),
                  height: context.widthPct(.25),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: (isPressed) ? secondColor : mainColor,
                  ),
                ),
                Container(
                  width: context.widthPct(.25),
                  height: context.widthPct(.25),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/netral.gif"))),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "Netral",
              style: headline,
            ),
          ),
        ],
      ),
    );
  }
}
