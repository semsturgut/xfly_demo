import 'package:flutter/material.dart';
import 'package:xfly_demo/screens/details.dart';

class History extends StatefulWidget {
  @override
  _History createState() => _History();
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

class _History extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(17.0, 50.0, 0.0, 15.0),
                child: Text(
                  'Geçmiş Uçuşlar',
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Details(imagePath: AssetImage('assets/images/2.jpg'))),
              );
            },
            child: Container(
              padding: new EdgeInsets.fromLTRB(15.0, 12.0, 15.0, 3.0),
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
                          image: AssetImage('assets/images/2.jpg'),
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
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Details(imagePath: AssetImage('assets/images/1.jpg'))),
              );
            },
            child: Container(
              padding: new EdgeInsets.fromLTRB(15.0, 12.0, 15.0, 3.0),
              height: 200.0,
              child: new Stack(
                children: <Widget>[
                  new Container(
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.3),
                              BlendMode.luminosity),
                          image: AssetImage('assets/images/1.jpg'),
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
          ),
        ],
      ),
    );
  }
}
