import 'package:flutter/material.dart';

class ProfileUser extends StatefulWidget {
  @override
  _ProfileUser createState() => _ProfileUser();
}

class _ProfileUser extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,50.0,0.0,0.0),
            child: new ListTile(
              leading: new CircleAvatar(
                backgroundImage: AssetImage("assets/images/pp.jpg"),
                radius: 30.0,
              ),
              title: new Text(
                "Murat Seçmen",
                style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),
              ),
              subtitle: new Text("Uçuş sayısı: 12"),
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
                "Ödeme yöntemlerim",
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
          new Divider(
            color: Colors.grey,
            indent: 16.0,
            endIndent: 16.0,
          ),
          new ListTile(
            trailing: new Icon(
              Icons.settings,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "Ayarlar",
                style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
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
              Icons.exit_to_app,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: new Text(
                "Bu profilden çık",
                style: new TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
              ),
            ),
          ),
          new Divider(
            color: Colors.grey,
            indent: 16.0,
            endIndent: 16.0,
          ),
        ],
      ),
    );
  }
}
