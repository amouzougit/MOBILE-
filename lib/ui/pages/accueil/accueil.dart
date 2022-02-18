import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hustler/constants.dart';
import 'package:hustler/ui/pages/connexion/login.dart';
import 'package:hustler/ui/pages/inscription/register.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  child: Text(
                    'Hustler',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: kPrimaryColor),
                  ),
                ),
              ),
              /*SvgPicture.asset(
                    "assets/icons/welc2.svg",
                    height: size.height * 0.45,
                    width: size.width,
                  ),*/

              Padding(
                  padding: const EdgeInsets.only(
                      top: 75, bottom: 10, left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/accueil.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 70, bottom: 70, left: 10, right: 10),
                      child: Text(
                        'Bienvenue sur Hustler , la solution pour vos petits travaux',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              /*Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 50, left: 10, right: 10),
                    child: Text(
                      'Bienvenue sur Hustler , la solution pour vos petits travaux',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),*/

              /*Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            */
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
                      width: size.width,
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: kPrimaryColor),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Se connecter',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
                      width: size.width,
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: kPrimaryColor),
                          color: Colors.white),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: Text(
                          "S'inscrire",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                              fontSize: 17),
                        ),
                      ),
                    ),
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
