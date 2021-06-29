import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler_mob/ui/pages/connexion/login.dart';
import 'package:hustler_mob/ui/pages/inscription/verifiedEmail.dart';
import '../../../constants.dart';

class CompleteRegister extends StatefulWidget {
  const CompleteRegister({Key? key}) : super(key: key);

  @override
  _CompleteRegisterState createState() => _CompleteRegisterState();
}

class _CompleteRegisterState extends State<CompleteRegister> {
  late String choix = "";
  List listItem = [
    "Client , j'ai bésoin d'aide",
    "Agent , promouvoir mes services"
  ];
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
              "assets/icons/continue.svg",
              height: size.height * 0.25,
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
                          hintText: "Nom d'utilisateur",
                          labelText: "Nom d'utilisateur",
                          labelStyle: TextStyle(fontFamily: familyFont)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    DropdownButton<String>(
                      hint: Text('Vous êtes ?'),
                      //dropdownColor: kPrimaryColor,
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      iconSize: 25,

                      underline: Container(
                        height: 1,
                        color: Colors.deepPurpleAccent,
                      ),
                      isExpanded: true,
                      value: choix.isNotEmpty ? choix : null,
                      onChanged: (String? newChoix) {
                        setState(() {
                          choix = newChoix!;
                        });
                      },
                      items: listItem.map((valeur) {
                        return DropdownMenuItem<String>(
                          value: valeur,
                          child: Container(child: Text(valeur)),
                        );
                      }).toList(),
                    ),
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
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerifiedEmail()));
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
