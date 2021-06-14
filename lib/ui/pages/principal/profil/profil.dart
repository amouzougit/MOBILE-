import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustler_mob/constants.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: size.height * 0.14,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('Voir et modifier mon profil',
                        maxLines: 2,
                        style: GoogleFonts.nunito(
                            color: Colors.grey[700], fontSize: 14)),
                  ),
                ],
              ),
              CircleAvatar(
                  radius: 26,
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
                    Icons.person_pin,
                    size: 30,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        height: size.height * 0.85,
        width: size.width,
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: size.height * 0.2,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.person_pin, color: kPrimaryColor),
                              SizedBox(width: 10),
                              Text(
                                'Mes informations',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 0, 5),
                      height: 0.5,
                      color: Colors.grey[400],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.place_outlined,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Mon adresse',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 0, 5),
                      height: 0.5,
                      color: Colors.grey[400],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.privacy_tip_outlined,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Conditions génerales',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: size.height * 0.2,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.announcement_outlined,
                                  color: kPrimaryColor),
                              SizedBox(width: 10),
                              Text(
                                'Mes annonces',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 0, 5),
                      height: 0.5,
                      color: Colors.grey[400],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_road,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Mes competences',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 0, 5),
                      height: 0.5,
                      color: Colors.grey[400],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.help_outline_rounded,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Obtenir de l'aide",
                                style: GoogleFonts.nunito(fontSize: 15),
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
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: size.height * 0.2,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.settings_sharp, color: kPrimaryColor),
                              SizedBox(width: 10),
                              Text(
                                'Paramètres',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 0, 5),
                      height: 0.5,
                      color: Colors.grey[400],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mobile_screen_share_outlined,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Inviter des amis",
                                style: GoogleFonts.nunito(fontSize: 15),
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
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 0, 5),
                      height: 0.5,
                      color: Colors.grey[400],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: size.height * 0.06,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Deconnexion',
                                style: GoogleFonts.nunito(fontSize: 15),
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hustler',
                style: GoogleFonts.nunito(fontSize: 15),
              ),
              Text(
                'Version ' + version,
                style: GoogleFonts.nunito(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
