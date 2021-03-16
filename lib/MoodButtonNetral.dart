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
                      DecorationImage(image: AssetImage("images/netral.gif"))),
            )
          ],
        ),
      ),
    );
  }
}
