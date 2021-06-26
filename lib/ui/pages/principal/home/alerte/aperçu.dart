import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../menu.dart';
import 'alerteList.dart';

class Apercu extends StatefulWidget {
  const Apercu({Key? key}) : super(key: key);

  @override
  _ApercuState createState() => _ApercuState();
}

class _ApercuState extends State<Apercu> {
  final List alertList = [
    {
      'service': "Travaux domicile ",
      'titre': "Amenagement",
      'message':
          "Bonjour , je cherche de l'aide pour amenager dans une new house ",
      'photo': '/assets/radison.jpg',
      'dateTaf': "Aujourd'hui",
      'offreNbre': "5",
      'dateAjout': "21 mars 2021",
      'position': 'Quartier general , Lomé , vers doganto',
      'prix': '5000',
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                color: kPrimaryColor,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Publier une annonce",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                      child: Text("Publier votre annonce en quelques étapes",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: size.width * 0.98,
                  height: 3,
                  color: Colors.pink),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                      children: alertList.map((alerte) {
                    return AlertCard(alerte);
                  }).toList())),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 15),
            padding: EdgeInsets.symmetric(vertical: 0.01),
            width: size.width * 0.4,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: kPrimaryColor),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Partager',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
