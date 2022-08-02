import 'package:flutter/material.dart';
import 'package:hustler/call_api/security.dart';
import 'package:hustler/ui/pages/principal/home/alerte/lieuPrix.dart';
import 'package:hustler/ui/pages/principal/menu.dart';

import '../../../../../constants.dart';

class TitreDescAlerte extends StatefulWidget {
  const TitreDescAlerte({Key? key}) : super(key: key);

  @override
  _TitreDescAlerteState createState() => _TitreDescAlerteState();
}

class _TitreDescAlerteState extends State<TitreDescAlerte> {
  String description = '';
  ApiSecurityService apiSecurity = new ApiSecurityService();

  void setDescription(text) {
    this.description = text;
  }

  String titre = '';
  void setTitre(text) {
    this.titre = text;
  }

  void creer() async {
    var data = await this.apiSecurity.creerOffre(this.titre, this.description);

    if (data == "CREER") {
      final snackBarMessage =
          SnackBar(content: Text("Vous avez creer votre offre"));
      ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
    } else {
      final snackBarMessage = SnackBar(
          content: Text(
              "Erreur subvenir lors de votre creation, veilllez  reesayer "));
      ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    late String choix = "";
    List listItem = [
      "Informatique",
      "Travaux domiciles",
      "Plomberie",
      "Menuserie",
      "Mecanicien",
      "..."
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                color: kPrimaryColor,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Publier une annonce",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                      child: Text("Publier votre annonce en quelques étapes",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: size.width * 1,
                  height: 3,
                  color: Colors.pink),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                // child: Text("De quel type de service sagit-il ?",
                //     style: TextStyle(
                //         fontSize: 15,
                //         color: Colors.black,
                //         fontWeight: FontWeight.bold)),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              //   child: Text(
              //       "Choisissez un type de service correspondant à votre annonce",
              //       style: TextStyle(
              //           fontSize: 13,
              //           color: Colors.black,
              //           fontWeight: FontWeight.w300)),
              // ),
              // Container(
              //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
              //   child: DropdownButton<String>(
              //     hint: Text('Type de service'),
              //     //dropdownColor: kPrimaryColor,
              //     icon: Icon(Icons.keyboard_arrow_down_sharp),
              //     iconSize: 25,

              //     underline: Container(
              //       height: 1,
              //       color: Colors.grey[400],
              //     ),
              //     isExpanded: true,
              //     value: choix.isNotEmpty ? choix : null,
              //     onChanged: (String? newChoix) {
              //       setState(() {
              //         choix = newChoix!;
              //       });
              //     },
              //     items: listItem.map((valeur) {
              //       return DropdownMenuItem<String>(
              //         value: valeur,
              //         child: Container(child: Text(valeur)),
              //       );
              //     }).toList(),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Text("Donner un titre à votre annonce",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Text("Exemple : Démenagement , Aide maçon ..",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: TextFormField(
                  onChanged: (value) => {this.setTitre(value)},
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: "Titre",
                      labelText: "Choisissez un titre simple",
                      labelStyle: TextStyle(fontFamily: familyFont)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Text("Détaillez votre annonce",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Text(
                    "Décrivez ce dont vous avez besoin afin de recevoir des offres adaptés à votre budget.",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: TextFormField(
                  onChanged: (value) => {this.setDescription(value)},
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: "Description",
                      labelText: "Description ",
                      labelStyle: TextStyle(fontFamily: familyFont)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 15),
            padding: EdgeInsets.symmetric(vertical: 0.01),
            width: size.width * 0.4,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: kPrimaryColor),
            child: TextButton(
              onPressed: () {
                this.creer();
              },
              child: Text(
                "Creer l'offre",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
