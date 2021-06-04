import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler_mob/ui/pages/connexion/login.dart';
import 'package:hustler_mob/ui/pages/inscription/register.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/dropdown.dart' show DropdownButton, DropdownMenuItem;
import '../../../constants.dart';

class CompleteRegister extends StatefulWidget {
  const CompleteRegister({Key? key}) : super(key: key);

  @override
  _CompleteRegisterState createState() => _CompleteRegisterState();
}

class _CompleteRegisterState extends State<CompleteRegister> {
  late String _chosenValue = 'ok';
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
          ),
          onPressed: () {},
        ),
      ),
      //backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Container(
            //color: kPrimaryColor,
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/icons/continue.svg",
              height: size.height * 0.25,
              width: size.width,
            ),
          ),
          Container(
            height: size.height,
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
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: "Pseudo",
                        labelText: "pseudo",
                        labelStyle: TextStyle(fontFamily: familyFont)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  
                  /*TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: "Mot de passe",
                        labelText: "Mot de passe",
                        labelStyle: TextStyle(fontFamily: familyFont),
                    ),
                  ),*/
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "S'inscrire",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
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
                            child: Text(
                              " Conditions d'utilisations de Hustler",
                              style: TextStyle(color: kPrimaryColor),
                            )),
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
