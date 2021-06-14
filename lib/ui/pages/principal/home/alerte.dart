import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class Alerte extends StatefulWidget {
  const Alerte({Key? key}) : super(key: key);
  @override
  _AlerteState createState() => _AlerteState();
}

class _AlerteState extends State<Alerte> {
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
    {
      'service': 'Mecanique',
      'titre': 'Reparation de vehicule de vehicule titan a 6 roues',
      'message':
          "Je cherche un mecanicien en urgence pour reparer ma voiture en panne",
      'photo': '/assets/radison.jpg',
      'offreNbre': "14000",
      'dateTaf': "Aujourd'hui",
      'dateAjout': "1 avril 2021",
      'position': 'Agoè cacaveli',
      'prix': '12000',
    },
    {
      'service': "Travaux domicile ",
      'titre': "Amenagement",
      'message': "Je cherche de l'aide pour amenager dans une new house ",
      'photo': '/assets/radison.jpg',
      'dateTaf': "Aujourd'hui",
      'offreNbre': "5",
      'dateAjout': "21 mars 2021",
      'position': 'Quartier general , Lomé , vers doganto',
      'prix': '5000',
    },
    {
      'service': 'Mecanique',
      'titre': 'Reparation de vehicule de vehicule titan a 6 roues',
      'message':
          "Je cherche un mecanicien en urgence pour reparer ma voiture en panne",
      'photo': '/assets/radison.jpg',
      'offreNbre': "14000",
      'dateTaf': "Aujourd'hui",
      'dateAjout': "1 avril 2021",
      'position': 'Agoè cacaveli',
      'prix': '12000',
    },
    {
      'service': "Travaux domicile ",
      'titre': "Amenagement",
      'message': "Je cherche de l'aide pour amenager dans une new house ",
      'photo': '/assets/radison.jpg',
      'dateTaf': "Aujourd'hui",
      'offreNbre': "5",
      'dateAjout': "21 mars 2021",
      'position': 'Quartier general , Lomé , vers doganto',
      'prix': '5000',
    },
    {
      'service': 'Mecanique',
      'titre': 'Reparation de vehicule de vehicule titan a 6 roues',
      'message':
          "Je cherche un mecanicien en urgence pour reparer ma voiture en panne",
      'photo': '/assets/radison.jpg',
      'offreNbre': "14000",
      'dateTaf': "Aujourd'hui",
      'dateAjout': "1 avril 2021",
      'position': 'Agoè cacaveli',
      'prix': '12000',
    },
  ];
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      color: Colors.grey[300],
      child: Column(
        children: [
          /*Container(
            //padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            //color: kPrimaryColor,
            child: SvgPicture.asset(
              "assets/icons/niceborder.svg",
              height: size.height * 0.1,
              color: Colors.white,
            ),
          ),*/
          Container(
            child: Column(
              children: alertList.map((alerte) {
                return AlertCard(alerte);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class AlertCard extends StatelessWidget {
  final Map alerteData;
  AlertCard(this.alerteData);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      //height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(12)),
            ),
            child: Container(
              width: size.width,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.6,
                    child: Text(
                      alerteData['titre'],
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    //width: size.width * 0.3,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: kPrimaryColor,
                        border: Border.all(color: kPrimaryColor)),
                    child: Center(
                      child: Text(
                        'Offre',
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
            margin: EdgeInsets.fromLTRB(10, 5, 10, 4),
            child: Container(
              child: Text(alerteData['message'],
                  maxLines: 2, style: GoogleFonts.notoSerif(fontSize: 14)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 7, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blueGrey,
                        child: Icon(
                          Icons.person,
                          size: 22,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Par ' + ' Nom ',
                          style: TextStyle(
                            fontSize: 12,
                            //color: Colors.grey[500],
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          alerteData['dateAjout'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: size.width * 0.3,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: kPrimaryColor),
                  child: Center(
                    child: Text(
                      alerteData['prix'] + ' cfa ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 8, 10, 5),
            height: 0.5,
            color: Colors.grey[400],
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.fromLTRB(10, 3, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: Colors.blueGrey,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: size.width * 0.4,
                      child: Text(
                        alerteData['position'],
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[850],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  alerteData['offreNbre'] + ' offres ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[850],
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
