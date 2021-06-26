import 'package:flutter/material.dart';
import 'package:hustler_mob/ui/pages/principal/home/alerte/aper%C3%A7u.dart';

import '../../../../../constants.dart';
import '../../menu.dart';

class DateTravail extends StatefulWidget {
  const DateTravail({Key? key}) : super(key: key);

  @override
  _DateTravailState createState() => _DateTravailState();
}

class _DateTravailState extends State<DateTravail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    onDateChanged(DateTime date) {}
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
                  width: size.width * 0.8,
                  height: 3,
                  color: Colors.pink),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Text("Ajouter une date ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Text(
                    "Quand souhaitez-vous faire réaliser votre annonce ?",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
              Center(
                  child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                  onDateChanged: onDateChanged,
                ),
              ))
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
            padding: EdgeInsets.only(left: 10, right: 15),
            //width: size.width * 0.6,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: kPrimaryColor),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Apercu()));
              },
              child: Text(
                'Continuer',
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
