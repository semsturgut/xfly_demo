import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xfly_demo/screens/profileInstructor.dart';

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
  GoogleMapController mapController;
  static LatLng _initialPosition;
  static LatLng _lastPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
        itemCount: 1,
        itemBuilder: (BuildContext context, int i) {
          return Column(
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
                              Colors.black.withOpacity(0.3),
                              BlendMode.luminosity),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileInstructor(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: new ListTile(
                    trailing: new CircleAvatar(
                      backgroundImage: AssetImage("assets/portraits/81.jpg"),
                      radius: 30.0,
                    ),
                    title: new Text(
                      "Ozan Yılmaz",
                      style: new TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 24.0),
                    ),
                    subtitle: new Text("Geçmiş uçuş sayısı: 229"),
                  ),
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
                  "Dünyanın en güzel manzaralarından birinin üstünde süzülmeye ne dersiniz? Fethiye ölü denizde unutulmaz bir anınız olsun. Gökyüzünde kuş olmayı isteyen ve pamuklara doğru yolculuk alırken şehri ayaklarının altına almak isteyen insanların yeri...",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
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
                                  imagePath:
                                      AssetImage('assets/images/1.jpg'))),
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
                                  imagePath:
                                      AssetImage('assets/images/2.jpg'))),
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
                  ),
                ],
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
                                  imagePath:
                                      AssetImage('assets/images/3.jpg'))),
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
                                    image: AssetImage('assets/images/3.jpg'),
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
                                  imagePath:
                                      AssetImage('assets/images/4.jpg'))),
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
                                    image: AssetImage('assets/images/4.jpg'),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                child: new Divider(
                  color: Colors.grey,
                ),
              ),
              new Text(
                "Sunulan İmkanlar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_right,
                        size: 16.0,
                      ),
                      Text(
                        "Eğitim",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_right,
                        size: 16.0,
                      ),
                      Text(
                        "Uçuş",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_right,
                        size: 16.0,
                      ),
                      Text(
                        "Video kaydı",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              ),
              OutlineButton(
                child: Text(
                  'Bütün imkanları gör',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
                child: new Divider(
                  color: Colors.grey,
                ),
              ),
              new Text(
                "Lokasyon",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              ),
              new Text(
                "Babadağ / Fethiye",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              ),
              Container(
                height: 200,
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    heightFactor: 0.3,
                    widthFactor: 2.5,
                    child: GoogleMap(
                      myLocationButtonEnabled: false,
                      initialCameraPosition:
                      CameraPosition(target: LatLng(40.9374, 29.3084), zoom: 12.0),
                      onMapCreated: onCreated,
                      myLocationEnabled: true,
                      mapType: MapType.normal,
                      compassEnabled: false,
                      zoomGesturesEnabled: false,
                      scrollGesturesEnabled: false,
                      rotateGesturesEnabled: false,
                      tiltGesturesEnabled: false,
                      markers: {besiktasMarker},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: new Divider(
                  color: Colors.grey,
                ),
              ),
              Text(
                "Uçuş Saatleri",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              ),
              Text("08:00 - 12:00 / 13:00 - 17:00",style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: new Divider(
                  color: Colors.grey,
                ),
              ),
              Text(
                "Pilot Yorumları",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 24.0,
                  backgroundImage: AssetImage("assets/portraits/34.jpg"),
                ),
                title: Row(
                  children: <Widget>[
                    Text("Seda"),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      "13.08.2019",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                subtitle: Text("Harika bir uçuştu, tekrar uçmak için sabırsızlanıyorum!!"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80.0,0.0,0.0,0.0),
                child: Row(
                  children: <Widget>[
                    new Text(
                      "5.0",
                      style: TextStyle(color: Colors.amber, fontSize: 12.0),
                    ),
                    new Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16.0,
                    ),
                    new Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16.0,
                    ),
                    new Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16.0,
                    ),
                    new Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16.0,
                    ),
                    new Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
              OutlineButton(
                child: Text(
                  'Bütün yorumları gör',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: new Divider(
                  color: Colors.grey,
                ),
              ),
              Text(
                "Soru Sormak İçin",
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 18.0),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              ),
              OutlineButton(
                child: Text(
                  'Mesaj At',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 20.0),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "594 ₺",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20.0),
                        ),
                        Text(
                          " / UÇUŞ",
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 14.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        new Text(
                          "5.0",
                          style: TextStyle(color: Colors.amber, fontSize: 12.0),
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                        new Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Tarih belirle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  Marker besiktasMarker = Marker(
    markerId: MarkerId('besiktas'),
    position: LatLng(40.9374, 29.3084),
    infoWindow: InfoWindow(title: 'Beşiktaş'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueAzure,
    ),
  );
}
