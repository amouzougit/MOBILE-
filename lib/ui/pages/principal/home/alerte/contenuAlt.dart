import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:hustler_mob/constants.dart';

class AlerteContenu extends StatefulWidget {
  const AlerteContenu({Key? key}) : super(key: key);

  @override
  _AlerteContenuState createState() => _AlerteContenuState();
}

class _AlerteContenuState extends State<AlerteContenu> {
  final List jobberList = [
    {'photo': '', 'nom': 'Aladji'},
    {'photo': '', 'nom': 'Michel'},
    {'photo': '', 'nom': 'Kodjo'}
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.share,
              color: kPrimaryColor,
              size: 20,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amenagement d'une maison situe a agoe non loin de l'hotel kossigan",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          'Publié le : date de publication',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blueGrey,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/ia.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                /*Icon(
                            Icons.person,
                            size: 22,
                            color: Colors.white,
                          )*/
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Username ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      //color: Colors.grey[500],
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'Voir le profil',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                        child: Text(
                          "Besoin d'aide pour amenager une maison nouvellement construit ,ceci est la description de l'alerte en question , toute cette page n'est qu'une mise en page du design type",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Text(
                        "Type de service",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          "le type de service",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(
                          "Autres informations",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: size.height * 0.23,
                            width: size.width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage('assets/images/ia.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      Text(
                        "Expiration de l'annonce",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0, bottom: 5.0),
                        child: Text(
                          "La date d'expiration",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      Text(
                        "Lieu d'intervention",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0, bottom: 5.0),
                        child: Text(
                          "Le lieu d'intervention",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                height: 0.5,
                color: Colors.grey[400],
              ),
              Container(
                width: size.width,
                height: size.height * 0.4,
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 15, bottom: 12.0),
                      child: Text(
                        'n jobbers intéressés',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: jobberList.map((jobber) {
                          return JobberCard(jobber);
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // decoration: BoxDecoration(),
      ),
      bottomSheet: Container(
        height: size.height * 0.09,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 6,
              spreadRadius: 4,
              color: Colors.grey,
              offset: Offset(0, 3))
        ]),
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                      'Budget : ',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('10000 ' + ' FCFA',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 13, bottom: 13),
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: kPrimaryColor),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Faire une offre',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class JobberCard extends StatelessWidget {
  final Map jobberData;
  JobberCard(this.jobberData);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        height: size.height * 0.23,
        width: size.width * 0.33,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.blueGrey,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/ia.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                /*Icon(
                              Icons.person,
                              size: 22,
                              color: Colors.white,
                            )*/
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Text(
                jobberData['nom'],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            Icon(
              Icons.next_plan,
              color: kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
