import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler_mob/constants.dart';
import 'package:hustler_mob/ui/pages/accueil/accueil.dart';
import 'package:hustler_mob/ui/pages/connexion/forgetPassword.dart';
import 'package:hustler_mob/ui/pages/inscription/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          Container(
            color: kPrimaryColor,
            height: size.height,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/access.svg",
              height: size.height * 0.33,
              width: size.width,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.5,
              width: size.width,
              //margin: EdgeInsets.only(top: 0),
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
                            hintText: "entrer votre mot de passe",
                            labelText: "Mot de passe",
                            labelStyle: TextStyle(
                                fontFamily: familyFont, fontSize: 13)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgetPassword()));
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
                        height: 5,
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
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
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: kPrimaryColor),
                        ),
                        width: size.width,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "S'inscrire",
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
