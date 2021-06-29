import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:hustler_mob/test.dart';
import 'package:hustler_mob/ui/pages/connexion/ModifyPass.dart';
import 'package:hustler_mob/ui/pages/connexion/login.dart';

import '../../../constants.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              "assets/icons/forget.svg",
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
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "Email",
                          labelText: "Email",
                          labelStyle: TextStyle(fontFamily: familyFont)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Envoyer",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ModifyPass()));
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
