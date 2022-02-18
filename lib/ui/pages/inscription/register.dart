import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler/ui/pages/connexion/login.dart';
import 'package:hustler/ui/pages/inscription/complete.dart';
import 'dart:developer' as developper;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hustler/call_api/security.dart';
import '../../../constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // checked
  bool isChecked = false;
  String email = '';
  String password = '';
  String username = '';
  ApiSecurityService apiSecurity = new ApiSecurityService();

  Color getColor(Set<MaterialState> states) {
    return kPrimaryColor;
  }

  void setUsername(text) {
    this.username = text;
  }

  void setEmail(text) {
    this.email = text;
  }

  void setPassword(text) {
    this.password = text;
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

  bool validateFields() {
    if (this.email.isNotEmpty &&
        this.isEmail(this.email) &&
        this.password.isNotEmpty &&
        this.username.isNotEmpty) {
      return true;
    } else if (this.username.isEmpty) {
      Fluttertoast.showToast(msg: "Entrez votre nom d'utilisateur");
    } else if (this.email.isEmpty) {
      Fluttertoast.showToast(msg: 'Entrez votre email');
    } else if (!this.isEmail(this.email)) {
      Fluttertoast.showToast(msg: 'Entrez un email valide');
    } else if (this.password.isEmpty) {
      Fluttertoast.showToast(msg: 'Entrez votre mot de passe');
    }
    return false;
  }

  void register() async {
    if (this.validateFields()) {
      String message = await this.apiSecurity.register(this.username, this.email, this.password);
      final snackBarMessage = SnackBar(content: Text("${message}"));
      ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
      if (message == "User registered successfully!")
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Login()));
        }
    }
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
          /*Container(
            height: size.height,
            color: kPrimaryColor,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/register.svg",
              height: size.height * 0.33,
              width: size.width,
            ),
          ),*/
          /*Positioned(
            bottom: 0,
            child: */
          Container(
            height: size.height,
            width: size.width,
            margin: const EdgeInsets.only(top: 50),
            //margin: const EdgeInsets.only(top: 250),
            decoration: BoxDecoration(
              /*borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),*/
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 5, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onChanged: (value) => {this.setUsername(value)},
                      onEditingComplete: () => Fluttertoast.showToast(
                          msg: "value", toastLength: Toast.LENGTH_LONG),
                      decoration: InputDecoration(
                          hintText: "Votre nom d'utilisateur ",
                          labelText: "Nom d'utilisateur",
                          labelStyle:
                              TextStyle(fontFamily: familyFont, fontSize: 13)),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => {this.setEmail(value)},
                      onEditingComplete: () => Fluttertoast.showToast(
                          msg: "value", toastLength: Toast.LENGTH_LONG),
                      decoration: InputDecoration(
                          hintText: "Votre adresse ",
                          labelText: "Email",
                          labelStyle:
                              TextStyle(fontFamily: familyFont, fontSize: 13)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onChanged: (value) => {this.setPassword(value)},
                      decoration: InputDecoration(
                          hintText: "Choisissez un mot de passe",
                          labelText: "Mot de passe",
                          labelStyle:
                              TextStyle(fontFamily: familyFont, fontSize: 13)),
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
                            this.register();
                            /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CompleteRegister()));
                                          */
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
          //)
        ],
      ),
    );
  }
}
