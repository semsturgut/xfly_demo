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
      body: new Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,50.0,0.0,0.0),
            child: new ListTile(
              leading: new CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/81.jpg"),
                radius: 30.0,
              ),
              title: new Text(
                "Ozan Yılmaz",
                style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),
              ),
              subtitle: new Text("Geçmiş uçuş sayısı: 229"),
            ),
          ),
          new Divider(
            color: Colors.grey,
          ),
          new ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "PROFİL SEÇENEKLERİ",
                style: new TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
              ),
            ),
          ),
          new ListTile(
            trailing: new Icon(
              Icons.person_outline,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "Bilgilerim",
                style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          new Divider(
            color: Colors.grey,
            indent: 16.0,
            endIndent: 16.0,
          ),
          new ListTile(
            trailing: new Icon(
              Icons.credit_card,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "Hesap Ayarlarım",
                style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ),
          new Divider(
            color: Colors.grey,
            indent: 16.0,
            endIndent: 16.0,
          ),
          new ListTile(
            trailing: new Icon(
              Icons.notifications_none,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "Bildirim ayarları",
                style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
              ),
            ),
          ),
//          new Divider(
//            color: Colors.grey,
//            indent: 16.0,
//            endIndent: 16.0,
//          ),
//          new ListTile(
//            trailing: new Icon(
//              Icons.settings,
//              color: Colors.blueGrey,
//              size: 40.0,
//            ),
//            title: Padding(
//              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
//              child: new Text(
//                "Ayarlar",
//                style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
//              ),
//            ),
//          ),
//          new Divider(
//            color: Colors.grey,
//            indent: 16.0,
//            endIndent: 16.0,
//          ),
//          new ListTile(
//            trailing: new Icon(
//              Icons.exit_to_app,
//              color: Colors.blueGrey,
//              size: 40.0,
//            ),
//            title: Padding(
//              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
//              child: new Text(
//                "Bu profilden çık",
//                style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
//              ),
//            ),
//          ),
          new Divider(
            color: Colors.grey,
            indent: 16.0,
            endIndent: 16.0,
          ),
          new ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "REKLAMLARIM",
                style: new TextStyle(fontWeight: FontWeight.w200, fontSize: 18),
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
                              imagePath: AssetImage('assets/images/4.jpg'))),
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
                              imagePath: AssetImage('assets/images/3.jpg'))),
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
