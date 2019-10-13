import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:xfly_demo/screens/details.dart';
import 'package:geolocator/geolocator.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  ScrollController _sc;
  PanelController _pc;
  bool disableScroll = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GoogleMapController mapController;
  static LatLng _initialPosition;
  static LatLng _lastPosition;
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return _initialPosition == null
        ? Container(
            alignment: Alignment.center,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
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
                        ),
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
              renderPanelSheet: false,
              defaultPanelState: PanelState.CLOSED,
              maxHeight: MediaQuery.of(context).size.height,
              minHeight: 290,
              panelSnapping: true,
              backdropEnabled: true,
              parallaxEnabled: true,
              backdropTapClosesPanel: true,
              onPanelSlide: (position) {
                if (position >= 1.0) {
                  setState(() {
                    disableScroll = false;
                  });
                } else if (position == 1.0 && _sc.offset == 0.0) {
                  setState(() {
                    disableScroll = true;
                  });
                } else {
                  setState(() {
                    disableScroll = true;
                  });
                }
              },
              panel: Visibility(visible: _visible, child: _panel()),
              body: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
                    child: GoogleMap(
                      myLocationButtonEnabled: false,
                      initialCameraPosition:
                          CameraPosition(target: _initialPosition, zoom: 12.0),
                      onMapCreated: onCreated,
                      myLocationEnabled: true,
                      mapType: MapType.normal,
                      onTap: (a) {
                        _toggle();
                      },
                      compassEnabled: false,
                      onCameraMove: _onCameraMove,
                      markers: {besiktasMarker, sisliMarker, arnavutkoyMarker},
                    ),
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
                              contentPadding:
                                  EdgeInsets.only(left: 0.0, top: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildBottomSlider(),
                ],
              ),
            ),
          );
  }

  Widget _panel() {
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 0.0),
        itemCount: 1,
        controller: _sc,
        physics: disableScroll
            ? NeverScrollableScrollPhysics()
            : ClampingScrollPhysics(),
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
            child: Column(
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
                                imagePath: AssetImage('assets/gifs/1.gif'),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 140.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/gifs/1.gif',
                                  fit: BoxFit.cover,
                                  height: 90.0,
                                  width: double.infinity,
                                ),
                                onBottomContent('Babadağ, Fethiye')
                              ],
                            ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
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
                                imagePath: AssetImage('assets/gifs/5.gif'),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 140.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/gifs/5.gif',
                                  fit: BoxFit.cover,
                                  height: 90.0,
                                  width: double.infinity,
                                ),
                                onBottomContent('Abant, Bolu')
                              ],
                            ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
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
                                imagePath: AssetImage('assets/gifs/3.gif'),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 140.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/gifs/3.gif',
                                  fit: BoxFit.cover,
                                  height: 90.0,
                                  width: double.infinity,
                                ),
                                onBottomContent('Kaş, Antalya')
                              ],
                            ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
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
                                imagePath: AssetImage('assets/gifs/4.gif'),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 140.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset(
                                  'assets/gifs/4.gif',
                                  fit: BoxFit.cover,
                                  height: 90.0,
                                  width: double.infinity,
                                ),
                                onBottomContent('İnönü C Tepesi, Eskişehir')
                              ],
                            ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                  child: new Divider(
                    color: Colors.grey,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),
                Text(
                  "Size nasıl yardımcı olabiliriz?",
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 28.0),
                ),
                _horizontalSlider(),
                new Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                Text(
                  "Uçuş hikayeleri",
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 28.0),
                ),
                Container(
                  height: 330.0,
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/4.jpg',
                          fit: BoxFit.cover,
                          height: 250.0,
                          width: double.infinity,
                        ),
                        Center(
                          child: OutlineButton(
                            child: Text(
                              'Bütün hikayeleri gör',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                  child: new Divider(
                    color: Colors.grey,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),
                Text(
                  "Yardıma mı ihtiyacınız var?",
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 28.0),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                ),
                OutlineButton(
                  child: Text(
                    'Destek Al',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void onCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
    _sc = ScrollController();
    _pc = PanelController();
    _sc.addListener(() {
      if (_sc.offset >= 1.0) {
        setState(() {
          disableScroll = false;
        });
      } else {
        setState(() {
          disableScroll = true;
        });
      }
    });
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastPosition = _initialPosition;
    });
  }

  void _getUserLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
    });
  }

  void _toggle() {
    setState(() {
      _visible = !_visible;
    });
  }

  Widget _horizontalSlider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 120.0,
            height: 110.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/egitim.jpg',
                    fit: BoxFit.cover,
                    width: 120.0,
                    height: 70.0,
                  ),
                  ListTile(
                    title: Text(
                      'Eğitim',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(''),
                    isThreeLine: true,
                  )
                ],
              ),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: 120.0,
            height: 110.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/fethiye.jpg',
                    fit: BoxFit.cover,
                    width: 120.0,
                    height: 70.0,
                  ),
                  ListTile(
                    title: Text(
                      'Uçuş',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(''),
                    isThreeLine: true,
                  )
                ],
              ),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: 120.0,
            height: 110.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/2.jpg',
                    fit: BoxFit.cover,
                    width: 120.0,
                    height: 70.0,
                  ),
                  ListTile(
                    title: Text('Yerler',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text(''),
                    isThreeLine: true,
                  )
                ],
              ),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Container(
            width: 120.0,
            height: 110.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.asset(
                    'assets/images/1.jpg',
                    fit: BoxFit.cover,
                    width: 120.0,
                    height: 70.0,
                  ),
                  ListTile(
                    title: Text('Macera',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text(''),
                    isThreeLine: true,
                  )
                ],
              ),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSlider() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 80.0),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(width: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    _boxes("assets/images/1.jpg", 40.9374, 29.3084, "Beşiktaş"),
              ),
              SizedBox(width: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _boxes("assets/images/2.jpg", 40.9348, 29.3024, "Şişli"),
              ),
              SizedBox(width: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _boxes(
                    "assets/images/3.jpg", 40.9306, 29.3180, "Arnavutköy"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String markerName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Details(imagePath: AssetImage(_image))),
        );
      },
      child: Container(
        child: new FittedBox(
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(24.0),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(_image),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: bottomHorizontalList(markerName),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomHorizontalList(String markerName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: Text(
              markerName,
              style: TextStyle(
                  color: Color(0xff6200ee),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text(
                "4,7",
                style: TextStyle(color: Colors.amber),
              ),
              new Icon(
                Icons.star,
                color: Colors.amber,
              ),
              new Icon(
                Icons.star,
                color: Colors.amber,
              ),
              new Icon(
                Icons.star,
                color: Colors.amber,
              ),
              new Icon(
                Icons.star,
                color: Colors.amber,
              ),
              new Icon(
                Icons.star_half,
                color: Colors.amber,
              ),
              Container(
                child: Text(
                  "(946)",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          child: Text(
            "Uzaklık 1.6 km",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget onBottomContent(String placeName) {
    return Wrap(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 4.0, 0.0, 2.0),
          child: new Text(
            placeName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 2.0, 0.0, 2.0),
          child: new Row(
            children: <Widget>[
              new Text(
                "4,7",
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
                Icons.star_half,
                color: Colors.amber,
                size: 16.0,
              ),
            ],
          ),
        )
      ],
    );
  }

  Marker besiktasMarker = Marker(
    markerId: MarkerId('besiktas'),
    position: LatLng(40.9374, 29.3084),
    infoWindow: InfoWindow(title: 'Beşiktaş'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueAzure,
    ),
  );

  Marker sisliMarker = Marker(
    markerId: MarkerId('sisli'),
    position: LatLng(40.9348, 29.3024),
    infoWindow: InfoWindow(title: 'Şişli'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueAzure,
    ),
  );

  Marker arnavutkoyMarker = Marker(
    markerId: MarkerId('arnavutkoy'),
    position: LatLng(40.9306, 29.3180),
    infoWindow: InfoWindow(title: 'Arnavutköy'),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueAzure,
    ),
  );
}
