import 'package:flutter/material.dart';
import 'package:hustler_mob/ui/pages/principal/home/home.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Activités'),
    Text('Messages'),
    Text('Profile'),
  ];

  void onItemTap(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(selectIndex)),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.red),
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attractions), label: 'Activités'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profil'),
        ],
        currentIndex: selectIndex,
        onTap: onItemTap,
      ),
    );
  }
}
