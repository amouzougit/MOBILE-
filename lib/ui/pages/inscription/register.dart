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
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Container(
            color: kPrimaryColor,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/register.svg",
              height: size.height * 0.33,
              width: size.width,
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            margin: const EdgeInsets.only(top: 320),
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
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        labelStyle: TextStyle(fontFamily: familyFont)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: "Mot de passe",
                        labelText: "Mot de passe",
                        labelStyle: TextStyle(fontFamily: familyFont)),
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
                          fontSize: 15,
                        ),
                      ),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Continuer",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompleteRegister()));
                        },
                        child: CircleAvatar(
                            radius: 35,
                            backgroundColor: kPrimaryColor,
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 30,
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
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child:
                                Text(" Conditions d'utilisations de Hustler",style: TextStyle(color: kPrimaryColor),)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
