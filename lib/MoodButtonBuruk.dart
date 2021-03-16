import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

class MoodButtonBuruk extends StatefulWidget {
  Color mainColor, secondColor;
  @override
  _MoodButtonBurukState createState() =>
      _MoodButtonBurukState(mainColor, secondColor);
  MoodButtonBuruk(this.mainColor, this.secondColor);
}

class _MoodButtonBurukState extends State<MoodButtonBuruk> {
  bool isPressed = false;
  Color mainColor, secondColor;
  _MoodButtonBurukState(this.mainColor, this.secondColor);
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
      child: Material(
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
                  image:
                      DecorationImage(image: AssetImage("images/buruk.gif"))),
            )
          ],
        ),
      ),
    );
  }
}
