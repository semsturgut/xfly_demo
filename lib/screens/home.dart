import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:xfly_demo/screens/details.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GoogleMapController mapController;
  static const _initialPosition = LatLng(41.0082, 28.9784);
  LatLng _lastPosition = _initialPosition;
  bool showDialog = true;

  final onTopContent = new Container(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pp.jpg"),
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Murat Seçmen",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Çıkış'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SlidingUpPanel(
        defaultPanelState: PanelState.OPEN,
        maxHeight: 290,
        minHeight: 40,
        panel: Column(
          children: <Widget>[
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
                                imagePath: AssetImage('assets/images/4.jpg'))),
                      );
                    },
                    child: Container(
                      padding: new EdgeInsets.fromLTRB(6.0, 6.0, 3.0, 3.0),
                      height: 140.0,
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
                          onTopContent
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
                                imagePath: AssetImage('assets/images/3.jpg'))),
                      );
                    },
                    child: Container(
                      padding: new EdgeInsets.fromLTRB(3.0, 6.0, 6.0, 3.0),
                      height: 140.0,
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
                          onTopContent
                        ],
                      ),
                    ),
                  ),
                )
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
                                imagePath: AssetImage('assets/images/1.jpg'))),
                      );
                    },
                    child: Container(
                      padding: new EdgeInsets.fromLTRB(6.0, 3.0, 3.0, 3.0),
                      height: 140.0,
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
                          onTopContent
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
                      padding: new EdgeInsets.fromLTRB(3.0, 3.0, 6.0, 3.0),
                      height: 140.0,
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
                          onTopContent
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: _initialPosition, zoom: 10.0),
              onMapCreated: onCreated,
              myLocationEnabled: true,
              mapType: MapType.terrain,
              compassEnabled: true,
              onCameraMove: _onCameraMove,
            ),
            Positioned(
              top: 50.0,
              left: 20.0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 30,
                        spreadRadius: 1)
                  ],
                ),
                child: IconButton(
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  icon: new Icon(
                    Icons.menu,
                    color: Colors.amberAccent[100],
                    size: 36,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              right: 15.0,
              left: 80.0,
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 5.0),
                        blurRadius: 10,
                        spreadRadius: 3)
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        icon: Container(
                          margin: EdgeInsets.only(left: 0, top: 5),
                          width: 10,
                          height: 10,
                        ),
                        hintText: "Ara",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 0.0, top: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  void onCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastPosition = position.target;
    });
  }

}


