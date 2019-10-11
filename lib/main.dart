import 'package:flutter/material.dart';
import 'package:xfly_demo/screens/favorites.dart';
import 'package:xfly_demo/screens/history.dart';
import 'package:xfly_demo/screens/home.dart';
import 'package:xfly_demo/screens/messages.dart';
import 'package:xfly_demo/screens/profileUser.dart';

void main() => runApp(MyApp());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Stack(children: <Widget>[
      Map(),
    ]),
    Favorites(),
    History(),
    Messages(),
    ProfileUser(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 32),
            title: Text('Keşfet'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,size: 32),
            title: Text('Favoriler'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,size: 32),
            title: Text('Geçmiş'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline,size: 32),
            title: Text('Mesajlar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,size: 32),
            title: Text('Profil'),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.amber[700],
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Fly Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'X Fly'),
    );
  }
}
