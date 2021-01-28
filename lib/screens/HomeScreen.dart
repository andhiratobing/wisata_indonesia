import 'package:flutter/material.dart';
import 'package:wisata_indonesia/widgets/TempatWisataWidget.dart';
import 'package:wisata_indonesia/widgets/MenuMakananWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();

}


class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  static const List<Widget> _options = <Widget>[
    Text('Home', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Wisata', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Akun', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

    void onTap(int value) {
    setState(() {
    _currentTab = value;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              vertical: 15.0,
          ),
          children: <Widget>[
            Column(
            children: <Widget>[
            SizedBox(
                height: 20.0,
                width: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0,
                  right: 130.0),
              child: Text(
                  'Wisata Indonesia Sangat Indah',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'SlencoBlack',
                    letterSpacing: 1.0,
                  ),
                ),
              ),

            ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.black38.withAlpha(10),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black.withAlpha(120),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pencarian wisata",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                          fontFamily: 'Montserrat-Regular',
                          letterSpacing: 0.7,
                        ),
                        border: InputBorder.none,
                      ),
                      onChanged: (String keyword) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(height: 10.0),
            TempatWisataWidget(),
            MenuMakananWidget(),
          ],
        ),
      ),

    );
  }
}