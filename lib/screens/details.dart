import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final AssetImage imagePath;

  Details({this.imagePath});

  @override
  _Details createState() => _Details();
}

final onTopContent2 = new Container(
  height: 200.0,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
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

final onTopContent = new Container(
  height: 100.0,
  child: Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
    child: new Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Text(
              "4,7",
              style: TextStyle(color: Colors.green[300]),
            ),
            new Icon(
              Icons.star,
              color: Colors.green[300],
            ),
            new Icon(
              Icons.star,
              color: Colors.green[300],
            ),
            new Icon(
              Icons.star,
              color: Colors.green[300],
            ),
            new Icon(
              Icons.star,
              color: Colors.green[300],
            ),
            new Icon(
              Icons.star_half,
              color: Colors.green[300],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 8.0),
          child: new Text(
            "Babadağ / Fethiye Yamaç Paraşütü",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w200, fontSize: 18),
          ),
        ),
        new Divider(
          color: Colors.grey,
        ),
      ],
    ),
  ),
);

class _Details extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 3.0),
            height: 280.0,
            color: Colors.transparent,
            child: new Stack(
              children: <Widget>[
                new Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.luminosity),
                      image: widget.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Positioned(
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: new Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  top: 35,
                  left: 10,
                ),
              ],
            ),
          ),
          onTopContent,
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: new ListTile(
              trailing: new CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/81.jpg"),
                radius: 30.0,
              ),
              title: new Text(
                "Ozan Yılmaz",
                style:
                    new TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),
              ),
              subtitle: new Text("Geçmiş uçuş sayısı: 229"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: new Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Text(
              "Dünyanın en güzel manzaralarından birinin üstünde süzülmeye ne dersiniz? Fethiye ölü denizde unutulmaz bir anınız olsun",
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
            child: new Divider(
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(
                              imagePath: AssetImage('assets/images/1.jpg'))),
                    );
                  },
                  child: Container(
                    padding: new EdgeInsets.fromLTRB(6.0, 6.0, 3.0, 3.0),
                    height: 120.0,
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
                                  topLeft: const Radius.circular(5.0),
                                  topRight: const Radius.circular(5.0),
                                  bottomLeft: const Radius.circular(5.0),
                                  bottomRight: const Radius.circular(5.0))),
                        ),
                        onTopContent2
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(
                              imagePath: AssetImage('assets/images/2.jpg'))),
                    );
                  },
                  child: Container(
                    padding: new EdgeInsets.fromLTRB(3.0, 6.0, 6.0, 3.0),
                    height: 120.0,
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
                                  topLeft: const Radius.circular(5.0),
                                  topRight: const Radius.circular(5.0),
                                  bottomLeft: const Radius.circular(5.0),
                                  bottomRight: const Radius.circular(5.0))),
                        ),
                        onTopContent2
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
