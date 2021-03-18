import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moodo/Detail_ListDoaBaik.dart';
import 'package:sized_context/sized_context.dart';

class SABT extends StatefulWidget {
  final Widget child;
  const SABT({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  _SABTState createState() {
    return new _SABTState();
  }
}

class _SABTState extends State<SABT> {
  ScrollPosition _position;
  bool _visible;
  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings settings =
        context.dependOnInheritedWidgetOfExactType();
    print(settings.minExtent);
    bool visible =
        settings == null || settings.currentExtent > settings.minExtent + 10;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 300),
      opacity: _visible ? 1 : 0,
      child: widget.child,
    );
  }
}

class ListDoaBaik extends StatefulWidget {
  ListDoaBaik({Key key, this.judul}) : super(key: key);

  final String judul;

  @override
  _ListDoaBaikState createState() => _ListDoaBaikState();
}

class Doa {
  String judul;
  String lafaz;
  String arti;
  String tentang;

  Doa({this.judul, this.lafaz, this.arti, this.tentang});
}

class _ListDoaBaikState extends State<ListDoaBaik> {
  List<Doa> doa = [
    Doa(
        judul: "Doa agar senantiasa bersyukur",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa mohon keberkahan",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa bertawakkal kepada Allah",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa memohon ilmu yang bermanfaat",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa agar hati ditetapkan hidayah",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa agar dicukupkan rezeki halal",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa agar senantiasa bersyukur",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa agar senantiasa bersyukur",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa agar senantiasa bersyukur",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul: "Doa agar senantiasa bersyukur",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
    Doa(
        judul:
            "Doa agar senantiasa bersyukur Doa agar senantiasa bersyukur Doa agar senantiasa bersyukur Doa agar senantiasa bersyukur",
        lafaz:
            "رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
        arti:
            "Ya Rabbku, tunjukilah aku untuk mensyukuri nikmat-Mu yang telah Engkau berikan kepadaku dan kepada ibu bapakku, dan supaya aku dapat berbuat amal shaleh yang Engkau ridhai. Sesungguhnya aku bertaubat kepada-Mu dan sesungguhnya aku termasuk orang-orang yang berserah diri. (Al-Ahqaf [46]: 15)",
        tentang:
            "Surah Al-Ahqaf (”Bukit-Bukit Pasir”) adalah surah ke-46 dalam Alquran. Surah ini tergolong surah Makkiyah yang terdiri atas 35 ayat. Dinamakan al-Ahqaf yang berarti Bukit-Bukit Pasir diambil dari kata al-Ahqaf yang terdapat pada ayat 21 surah ini. "),
  ];

  // @override
  // void initState() {
  //   doa = getDoa();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    bool isPressed = false;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 10,
            shadowColor: Color.fromARGB(255, 67, 169, 165),
            pinned: true,
            floating: true,
            snap: false,
            expandedHeight: context.heightPct(.18),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: InkWell(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                  Navigator.pop(context);
                });
              },
              child: Container(
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
                  borderRadius: BorderRadius.circular(100),
                ),
                margin: EdgeInsets.all(11),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shadowColor: Color.fromARGB(255, 142, 211, 73),
                  borderRadius: BorderRadius.circular(100),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Good Mood",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    height: 0.4,
                    fontSize: 24),
              ),
              background: Container(
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
            ),
          ),
          SliverList(

              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(

                  // The builder function returns a ListTile with a title that
                  // displays the index of the current item.
                  (context, index) => Container(
                        child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            elevation: 4,
                            shadowColor: Color.fromARGB(255, 63, 164, 165),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    Color(0xff65db9f),
                                    Color(0xff3da0a6)
                                  ],
                                ),
                              ),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Detail_ListDoaBaik()));
                                  });
                                },
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: context.heightPct(.009),
                                    horizontal: 24),
                                title: Text(
                                  '${doa[index].judul}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )),
                      ),
                  childCount: doa.length))
        ],
      ),
    );
  }
}
