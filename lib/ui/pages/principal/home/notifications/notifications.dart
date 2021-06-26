import 'package:flutter/material.dart';
import 'package:hustler_mob/ui/pages/principal/home/notifications/nothingNot.dart';
import 'package:hustler_mob/ui/pages/principal/home/notifications/notifList.dart';

import '../../../../../constants.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool notification = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: kPrimaryColor,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Container(
          height: size.height,
          child: (notification)
              // ignore: dead_code
              ? SingleChildScrollView(child: NotficationList())
              : NothingNot()),
    );
  }
}
