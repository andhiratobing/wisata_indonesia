import 'package:flutter/material.dart';
import 'package:wisata_indonesia/models/TempatWisata.dart';
import 'package:wisata_indonesia/screens/TempatWisataScreen.dart';

class TempatWisataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Wisata Populer',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('Lihat semua'),
                child: Text(
                  'Lihat semua',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 410.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListWisata.length,
            itemBuilder: (BuildContext context, int index) {
              // ignore: non_constant_identifier_names
              TempatWisata wisata = ListWisata[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TempatWisataScreen(
                      wisata: wisata,
                    ),
                  ),
                ),

                child: Container(
                  margin: EdgeInsets.all(20.0),
                  width: 220.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 20.0,
                        child: Container(
                          height: 140.0,
                          width: 220.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                     child: Icon(
                                        Icons.location_on_outlined,
                                        size: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      wisata.provinsi,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5,
                                        fontFamily: 'NunitoSans-Regular',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  '${wisata.activities.length} wisata',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3,
                                    color: Colors.black87,
                                    fontFamily: 'NunitoSans-Regular',
                                  ),
                                ),
                                Text(
                                  wisata.deskripsi,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat-Reguler',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: wisata.gambarUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 230.0,
                                  width: 220.0,
                                  image: AssetImage(wisata.gambarUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
