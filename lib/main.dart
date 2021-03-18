import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:moodo/FavPage.dart';
import 'package:moodo/ListDoaPage.dart';
import 'package:moodo/homePage.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MoodoApp());
}

class MoodoApp extends StatefulWidget {
  @override
  _MoodoAppState createState() => _MoodoAppState();
}

class _MoodoAppState extends State<MoodoApp> {
  int pageIndex = 0;
  final HomePage _homePage = HomePage();
  final ListDoaPage _listDoaPage = ListDoaPage();
  final FavPage _favPage = FavPage();

  Widget _showPage = HomePage();
  // ignore: missing_return
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _listDoaPage;
        break;
      case 2:
        return _favPage;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green, primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: navbar(),
          body: Container(
            child: _showPage,
          )),
    );
  }

  CurvedNavigationBar navbar() {
    return CurvedNavigationBar(
      animationCurve: Curves.easeInOut,
      height: 65,
      index: pageIndex,
      color: Color.fromARGB(255, 101, 219, 156),
      buttonBackgroundColor: Color.fromARGB(255, 66, 167, 166),
      backgroundColor: Colors.white,
      items: <Widget>[
        Icon(
          Icons.home_rounded,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite_rounded,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (int tappedIndex) {
        setState(() {
          _showPage = _pageChooser(tappedIndex);
        });
      },
    );
  }
}
