import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  static const List messageList = [
    {
      'message':
          "Bonjour , j'ai vu votre offre et j'aimerais vous faire une proposition",
      'photo': '/assets/images/ia.png',
      'nom': 'Max ',
      'date': '14 juin'
    },
    {
      'message':
          "Bonjour , l'equipe hustler a votre service , nous sommes ravis que vous rejoignez notre communauté; ",
      'photo': '/assets/images/hack.jpg',
      'nom': 'Ferdinand',
      'date': '13 juin'
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Messages',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        //color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              height: size.height * 0.06,
              margin: EdgeInsets.all(10),
              child: Container(
                //padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'Recherche',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            Container(
              child: Column(
                children: messageList.map((message) {
                  return MessageCard(message);
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final Map messageData;
  MessageCard(this.messageData);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: kPrimaryColor,
                          child:
                              /*Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/avatar.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          ),*/
                              Icon(
                            Icons.person,
                            size: 22,
                            color: Colors.white,
                          )),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            messageData['nom'],
                            style: TextStyle(
                              fontSize: 15,
                              //color: Colors.grey[500]
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            //color: kPrimaryColor,
                            width: size.width * 0.65,
                            padding: EdgeInsets.only(top: 5),
                            child: Text(messageData['message'],
                                maxLines: 2,
                                style: GoogleFonts.notoSerif(
                                    fontSize: 13, color: Colors.grey[800])),
                          ),
                        ],
                      ),
                      Container(
                        //width: size.width * 0.4,
                        //padding: EdgeInsets.all(3),
                        child: Center(
                          child: Text(
                            messageData['date'],
                            style: TextStyle(
                              fontSize: 10,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 8, 10, 5),
                height: 0.5,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
