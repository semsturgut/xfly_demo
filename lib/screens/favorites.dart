import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _Favorites createState() => _Favorites();
}

final onTopContent = new Container(
  height: 200.0,
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: new Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
          child: new Text(
            "Yeni kesifler",
            style: TextStyle(color: Colors.white),
          ),
        ),
        new Row(
          children: <Widget>[
            new Text(
              "4,7",
              style: TextStyle(color: Colors.blue[100]),
            ),
            new Icon(
              Icons.star,
              color: Colors.blue[100],
            ),
            new Icon(
              Icons.star,
              color: Colors.blue[100],
            ),
            new Icon(
              Icons.star,
              color: Colors.blue[100],
            ),
            new Icon(
              Icons.star,
              color: Colors.blue[100],
            ),
            new Icon(
              Icons.star_half,
              color: Colors.blue[100],
            ),
          ],
        )
      ],
    ),
  ),
);

class _Favorites extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'Favoriler',
          style: TextStyle(color: Colors.blueGrey, fontSize: 28),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: new EdgeInsets.fromLTRB(6.0, 12.0, 6.0, 3.0),
            height: 200.0,
            color: Colors.transparent,
            child: new Stack(
              children: <Widget>[
                new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3),
                            BlendMode.luminosity),
                        image: AssetImage('assets/images/4.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0))),
                ),
                onTopContent,
              ],
            ),
          ),
          Container(
            padding: new EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
            height: 200.0,
            child: new Stack(
              children: <Widget>[
                new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.3),
                            BlendMode.luminosity),
                        image: AssetImage('assets/images/3.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0))),
                ),
                onTopContent,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
