import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler/constants.dart';
import 'package:hustler/ui/pages/accueil/accueil.dart';
import 'package:hustler/ui/pages/connexion/forgetPassword.dart';
import 'package:hustler/ui/pages/principal/menu.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hustler/call_api/security.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ApiSecurityService apiSecurity = new ApiSecurityService();
  String password = '';
  String username = '';

  void setUsername(text) {
    this.username = text;
  }

  void setPassword(text) {
    this.password = text;
  }

  bool validateFields() {
    if (this.password.isNotEmpty && this.username.isNotEmpty) {
      return true;
    } else if (this.username.isEmpty) {
      Fluttertoast.showToast(msg: "Entrez votre nom d'utilisateur");
    } else if (this.password.isEmpty) {
      Fluttertoast.showToast(msg: 'Entrez votre mot de passe');
    }
    return false;
  }

  void login() async {
    print("login");
    if (this.validateFields()) {
      print("login2");

      var data = await this.apiSecurity.login(this.username, this.password);
      print(data);
      if (data.runtimeType.toString() ==
          "_InternalLinkedHashMap<String, dynamic>") {
        print("login3");
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('id', data["id"]);
        prefs.setString('username', data["username"]);
        prefs.setString('email', data["email"]);
        //prefs.setString('roles', data["roles"][0]);
        prefs.setString('accessToken', data["accessToken"]);
        prefs.setString('tokenType', data["tokenType"]);
        prefs.setString('profession', data["profession"]);
        prefs.setString('telephone', data["telephone"]);
        prefs.setString('createdAt', data["createdAt"]);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Menu()));
      } else {
        final snackBarMessage = SnackBar(content: Text("${data}"));
        ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Accueil()));
          },
        ),
      ),
      //backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          /*Container(
            color: kPrimaryColor,
            height: size.height,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/access.svg",
              height: size.height * 0.33,
              width: size.width,
            ),
          ),*/
          /*Positioned(
            bottom: 0,*/
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 5, left: 20, right: 20),
              child: Container(
                //height: size.height * 0.5,
                width: size.width,
                //margin: EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                  /*borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  ),*/
                  color: Colors.white,
                ),

                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => {this.setUsername(value)},
                      decoration: InputDecoration(
                          hintText: "votre adresse email",
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
                          hintText: "entrer votre mot de passe",
                          labelText: "Mot de passe",
                          labelStyle:
                              TextStyle(fontFamily: familyFont, fontSize: 13)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              'mot de passe oublié',
                              style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                  decorationColor: kPrimaryColor,
                                  color: kPrimaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Se connecter",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            this.login();
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
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
