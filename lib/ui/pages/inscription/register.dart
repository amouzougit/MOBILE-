import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler_mob/ui/pages/connexion/login.dart';
import 'package:hustler_mob/ui/pages/inscription/complete.dart';

import '../../../constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // checked
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    return kPrimaryColor;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
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
            height: size.height,
            color: kPrimaryColor,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/register.svg",
              height: size.height * 0.33,
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.5,
              width: size.width,
              margin: const EdgeInsets.only(top: 250),
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(50.0),
                  topRight: const Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "votre adresse email",
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontFamily: familyFont, fontSize: 13)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: "choisissez un mot de passe",
                            labelText: "Mot de passe",
                            labelStyle: TextStyle(
                                fontFamily: familyFont, fontSize: 13)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "j'accepte les conditions d'utilisations",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Continuer",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompleteRegister()));
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
                      //Spacer(),

                      Container(
                        padding: EdgeInsets.only(top: 20),
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
            ),
          )
        ],
      ),
    );
  }
}
