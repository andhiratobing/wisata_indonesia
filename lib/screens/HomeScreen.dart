import 'package:flutter/material.dart';
import 'package:wisata_indonesia/widgets/TempatWisataWidget.dart';
import 'package:wisata_indonesia/widgets/MenuMakananWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

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
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          ),
        child:BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _currentTab,
            onTap: (int value) {
              setState(() {
                _currentTab = value;
              });
            },
        items: [
          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1,
                  colors: <Color>[
                    Colors.greenAccent[200],
                    Colors.blueAccent[200]
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(
                  Icons.home_outlined,
                  size: 30.0,
              ),
            ),
            icon: new Icon(
                Icons.home_outlined,
                color: Colors.grey,
                size: 30.0
            ),
            // ignore: deprecated_member_use
            title: new Text('Home'),
          ),

          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1,
                  colors: <Color>[
                    Colors.greenAccent[200],
                    Colors.blueAccent[200]
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(
                Icons.location_on_outlined,
                size: 30.0,
              ),
            ),
            icon: new Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
                size: 30.0
            ),
            // ignore: deprecated_member_use
            title: new Text('Wisata'),
          ),
          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1,
                  colors: <Color>[
                    Colors.greenAccent[200],
                    Colors.blueAccent[200]
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(
                Icons.account_circle_outlined,
                size: 30.0,
              ),
            ),
            icon: new Icon(
                Icons.account_circle_outlined,
                color: Colors.grey,
                size: 30.0
            ),
            // ignore: deprecated_member_use
            title: new Text('Akun'),
          ),
        ],
      ),
      ),
      ),
    );
  }
}
