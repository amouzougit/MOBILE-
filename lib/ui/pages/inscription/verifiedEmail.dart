import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler_mob/ui/pages/connexion/login.dart';
import 'package:hustler_mob/ui/pages/principal/menu.dart';

import '../../../constants.dart';

class VerifiedEmail extends StatefulWidget {
  const VerifiedEmail({Key? key}) : super(key: key);

  @override
  _VerifiedEmailState createState() => _VerifiedEmailState();
}

class _VerifiedEmailState extends State<VerifiedEmail> {
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
      ),
      //backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Container(
            //color: kPrimaryColor,
            height: size.height,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/verified.svg",
              height: size.height * 0.3,
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.5,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(50.0),
                  topRight: const Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: "Entrer le code de verification",
                                  labelText: "code de vérification",
                                  labelStyle:
                                      TextStyle(fontFamily: familyFont)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Renvoyer",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                  ),
                                ),
                                Icon(
                                  Icons.rotate_right_sharp,
                                  color: kPrimaryColor,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    /*Row(
                      children: [
                        Expanded(
                          child: Container(
                            //padding: EdgeInsets.only(left: 5),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: "Code de verification",
                                  labelText: "Code de verification",
                                  labelStyle:
                                      TextStyle(fontFamily: familyFont)),
                            ),
                          ),
                        ),
                      ],
                    ),*/
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Confirmer",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menu()));
                          },
                          child: CircleAvatar(
                              radius: 25,
                              backgroundColor: kPrimaryColor,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 22,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      //margin: const EdgeInsets.only(top:2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.verified_rounded,
                            color: kPrimaryColor,
                            size: 15,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text(
                                " Conditions d'utilisations de Hustler",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 11),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
