import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class GenreModify extends StatefulWidget {
  const GenreModify({Key? key}) : super(key: key);

  @override
  _GenreModifyState createState() => _GenreModifyState();
}

class _GenreModifyState extends State<GenreModify> {
  late String choix = "";
  List listItem = ["Homme", "Femme", "Non Spécifié"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Sexe',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                child: DropdownButton<String>(
                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text("Non Spécifié"),
                  iconSize: 25,
                  autofocus: true,
                  underline: Container(
                    height: 1,
                    color: Colors.grey[400],
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
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
        width: size.width,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: kPrimaryColor),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Enregistrer',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
