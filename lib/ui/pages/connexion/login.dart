import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler_mob/constants.dart';
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
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Container(
            color: kPrimaryColor,
            height: size.height * 0.5,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/access.svg",
              height: size.height * 0.33,
              width: size.width,
              alignment: Alignment.center,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: size.height / 1.8,
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
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Email",
                          labelText: "Email",
                          hintStyle: TextStyle(color: kPrimaryColor),
                          labelStyle:
                              TextStyle(fontFamily: familyFont, fontSize: 13)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: "Mot de passe",
                          labelText: "Mot de passe",
                          hintStyle: TextStyle(color: kPrimaryColor),
                          labelStyle:
                              TextStyle(fontFamily: familyFont, fontSize: 13)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'mot de passe oublié',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              decorationColor: kPrimaryColor,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                          borderRadius: BorderRadius.circular(10),
                          color: kPrimaryColor),
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
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.rotate_right_sharp,
                              color: Colors.white,
                            )
                          ],
                        ),
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
