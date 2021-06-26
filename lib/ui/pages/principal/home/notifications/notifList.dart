import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';

class NotficationList extends StatefulWidget {
  const NotficationList({Key? key}) : super(key: key);

  @override
  _NotficationListState createState() => _NotficationListState();
}

class _NotficationListState extends State<NotficationList> {
  final List notifs = [
    {
      "titre": "Offre reçue",
      "cmessage": "vous avez recu une offre de Marc",
    },
    {
      "titre": "Offre reçue",
      "cmessage": "vous avez recu une offre de Ramou et fils"
    },
    {
      "titre": "Mise a jour ",
      "cmessage": "N'oubliez pas de mettre à jour votre appli"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      color: Colors.grey[300],
      child: Column(
        children: [
          Container(
            child: Column(
              children: notifs.map((notification) {
                return NotifCard(notification);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class NotifCard extends StatelessWidget {
  final Map notifData;
  NotifCard(this.notifData);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Column(
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
                            child: Icon(
                              Icons.notifications_active_outlined,
                              size: 22,
                              color: Colors.white,
                            )),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notifData['titre'],
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
                              child: Text(notifData['cmessage'],
                                  maxLines: 2,
                                  style: GoogleFonts.notoSerif(
                                      fontSize: 13, color: Colors.grey[800])),
                            ),
                          ],
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
      ),
    );
  }
}
