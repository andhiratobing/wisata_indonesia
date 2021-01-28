import 'package:flutter/material.dart';
import 'package:wisata_indonesia/screens/HomeScreen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      title: 'Wisata Indonesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
    NavigationBar ({Key key}) : super(key: key);

    @override
    _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<NavigationBar > {
  int _currentTab = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
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
      body: Center(
        child: _widgetOptions.elementAt(_currentTab),
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
          child : BottomNavigationBar(
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
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _currentTab,
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}





