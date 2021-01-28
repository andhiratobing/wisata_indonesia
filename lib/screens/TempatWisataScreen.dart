import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wisata_indonesia/models/Activity.dart';
import 'package:wisata_indonesia/models/TempatWisata.dart';

class TempatWisataScreen extends StatefulWidget {
  final TempatWisata wisata;

  TempatWisataScreen({this.wisata});

  @override
  _TempatWisataScreenState createState() => _TempatWisataScreenState();
}

class _TempatWisataScreenState extends State<TempatWisataScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.wisata.gambarUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Image(
                      image: AssetImage(widget.wisata.gambarUrl),
                      fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.wisata.provinsi,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
              itemCount: widget.wisata.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity = widget.wisata.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                      width: MediaQuery.of(context).size.width*100.0,
                      height: MediaQuery.of(context).size.height*0.30,
                      //height: 190.0,
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(130.0, 20.0, 20.0, 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.27,
                                  child: Text(
                                    activity.nama,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Tiket masuk',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    SizedBox(height: 3.0),
                                    Text(
                                      '\Rp.${activity.harga}',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              activity.provinsi,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              activity.kota,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    activity.startTimes[0],
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    activity.startTimes[1],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child : Container(
                        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.height*0.25,
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            activity.gambarUrl,
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
