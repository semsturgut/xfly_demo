import 'package:flutter/material.dart';
import 'details.dart';

class ProfileInstructor extends StatefulWidget {
  @override
  _ProfileInstructor createState() => _ProfileInstructor();
}

class _ProfileInstructor extends State<ProfileInstructor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
        itemCount: 1,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50.0, 0.0, 0.0),
                  child: new ListTile(
                    leading: new CircleAvatar(
                      backgroundImage: AssetImage("assets/portraits/81.jpg"),
                      radius: 30.0,
                    ),
                    title: new Text(
                      "Ozan Yılmaz",
                      style: new TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 24.0),
                    ),
                    subtitle: new Text(" 5 Mayıs 2019, Tarihinde Katıldı"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Icon(
                            Icons.check_circle_outline,
                            size: 24.0,
                            color: Colors.green[700],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                            child: Text('Onaylı'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90.0, 8.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          new Text(
                            "4,81",
                            style:
                                TextStyle(color: Colors.amber, fontSize: 12.0),
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
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: new Text(
                      "Hakkında",
                      style: new TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 24),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Icon(
                            Icons.format_quote,
                            size: 36.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 0.0, 22.0, 0.0),
                  child: new Text(
                    "16 Yıldır profesyonel uçan birisi olarak verdiğim eğitimlerin yanı sıra ikili uçuşlar da gerçekleştirmekteyim.",
                    style: new TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Icon(
                            Icons.linear_scale,
                            size: 36.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 24.0,
                        color: Colors.grey[700],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                        child: Text("Fethiye'de yaşıyor"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(
                        Icons.language,
                        size: 24.0,
                        color: Colors.grey[700],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                        child: Text("İngilizce Türkçe"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(
                        Icons.history,
                        size: 24.0,
                        color: Colors.grey[700],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                        child: Text('16 yıl deneyim'),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: new Text(
                      "Ulaşılabilirlik",
                      style: new TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 24),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          size: 16.0,
                          color: Colors.green[700],
                        ),
                        Text(
                          "Email adresi",
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
                          Icons.check,
                          size: 16.0,
                          color: Colors.green[700],
                        ),
                        Text(
                          "Telefon numarası",
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
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                  child: Divider(
                    color: Colors.grey,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: new Text(
                      "Ozan'a ait diğer uçuşlar",
                      style: new TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 24),
                    ),
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
                                        AssetImage('assets/images/4.jpg'))),
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
                                      image: AssetImage('assets/images/4.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(5.0),
                                        topRight: const Radius.circular(5.0),
                                        bottomLeft: const Radius.circular(5.0),
                                        bottomRight:
                                            const Radius.circular(5.0))),
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
                                        AssetImage('assets/images/3.jpg'))),
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
                                      image: AssetImage('assets/images/3.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(5.0),
                                        topRight: const Radius.circular(5.0),
                                        bottomLeft: const Radius.circular(5.0),
                                        bottomRight:
                                            const Radius.circular(5.0))),
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
                  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                  child: Divider(
                    color: Colors.grey,
                    indent: 16.0,
                    endIndent: 16.0,
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: new Text(
                      "Pilot Yorumları",
                      style: new TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 24),
                    ),
                  ),
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
                  subtitle: Text(
                      "Harika bir uçuştu, tekrar uçmak için sabırsızlanıyorum!!"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
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
              ],
            ),
          );
        },
      ),
    );
  }
}
