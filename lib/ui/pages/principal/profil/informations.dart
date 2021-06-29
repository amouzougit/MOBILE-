import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustler_mob/ui/pages/principal/profil/InfoEdit/bioModify.dart';
import 'package:hustler_mob/ui/pages/principal/profil/InfoEdit/dnaissanceModify.dart';
import 'package:hustler_mob/ui/pages/principal/profil/InfoEdit/emailModify.dart';
import 'package:hustler_mob/ui/pages/principal/profil/InfoEdit/genreModify.dart';
import 'package:hustler_mob/ui/pages/principal/profil/InfoEdit/numberModify.dart';
import 'package:hustler_mob/ui/pages/principal/profil/InfoEdit/usernamesModify.dart';

import '../../../../constants.dart';

class Informations extends StatefulWidget {
  const Informations({Key? key}) : super(key: key);

  @override
  _InformationsState createState() => _InformationsState();
}

class _InformationsState extends State<Informations> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Infos',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                color: Colors.white,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text('Mes informations',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                //color: kPrimaryColor,
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundColor: kPrimaryColor,
                        child:
                            /*Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/avatar.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),*/
                            Icon(
                          Icons.person_pin,
                          size: 45,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Modifier ma photo de profil',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: Text('À propos de vous',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 5, top: 8.0, bottom: 8.0, right: 8),
                            //height: size.height * 0.06,
                            width: size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            UsernamesModify()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nom',
                                            style: GoogleFonts.nunito(
                                                fontSize: 15),
                                          ),
                                          Text(
                                            'Username',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
                            height: 0.5,
                            color: Colors.grey[400],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 8.0, 8.0, 8),
                            //height: size.//height * 0.06,
                            width: size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BioModify()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10),
                                      Text(
                                        'Décrivez vous !',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            height: 0.5,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10, top: 20),
                      child: Text('Coordonnées',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 5, top: 8.0, bottom: 8.0, right: 8),
                            //height: size.height * 0.06,
                            width: size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EmailModify()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Adresse E-MAIL',
                                            style: GoogleFonts.nunito(
                                                fontSize: 15),
                                          ),
                                          Text(
                                            'Exemple@gmail.com',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
                            height: 0.5,
                            color: Colors.grey[400],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 8.0, 8.0, 8),
                            //height: size.//height * 0.06,
                            width: size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NumberModify()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Numéro de Téléphone',
                                            style: GoogleFonts.nunito(
                                                fontSize: 15),
                                          ),
                                          Text(
                                            'Aucun',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            height: 0.5,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10, top: 20),
                      child: Text('Informations privées',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 5, top: 8.0, bottom: 8.0, right: 8),
                            //height: size.height * 0.06,
                            width: size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GenreModify()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Genre',
                                            style: GoogleFonts.nunito(
                                                fontSize: 15),
                                          ),
                                          Text(
                                            'Non Spécifié',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
                            height: 0.5,
                            color: Colors.grey[400],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 8.0, 8.0, 8),
                            //height: size.//height * 0.06,
                            width: size.width,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DnaissModify()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Date de Naissance',
                                            style: GoogleFonts.nunito(
                                                fontSize: 15),
                                          ),
                                          Text(
                                            'Non Spécifié',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            height: 0.5,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
