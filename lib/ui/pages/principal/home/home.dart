import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustler_mob/ui/pages/principal/home/alerte/alerteCreation.dart';
import 'package:hustler_mob/ui/pages/principal/home/alerte/alerteList.dart';
import 'package:hustler_mob/ui/pages/principal/home/notifications/notifications.dart';
import 'package:hustler_mob/ui/pages/principal/home/postAgent/postCreation.dart';

import '../../../../constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(50.0),
              topRight: const Radius.circular(50.0),
            ),
            color: Colors.grey[300]),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SearchBar(),
            AlerteList(),
          ],
        )),
      ),
    );
  }
}

// AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  static const String userType = "client";
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.add_circle_outline,
          color: kPrimaryColor,
        ),
        onPressed: () {
          (userType == 'client')
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlerteCreation()))
              : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PostCreation()));
        },
      ),
      title: Text('Hustler',
          style: GoogleFonts.nunito(
              color: kPrimaryColor, fontWeight: FontWeight.bold)),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications_none_rounded,
            color: kPrimaryColor,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Notifications()));
          },
        ),
      ],
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}

// Search Section
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: size.height * 0.15,
      //color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.grey,
                            offset: Offset(0, 1))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Cherchez un ...',
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4,
                          color: Colors.grey,
                          offset: Offset(0, 1)),
                    ]),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Icon(
                      Icons.search,
                      //size: 26,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: kPrimaryColor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
