import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PasswordModify extends StatefulWidget {
  const PasswordModify({Key? key}) : super(key: key);

  @override
  _PasswordModifyState createState() => _PasswordModifyState();
}

class _PasswordModifyState extends State<PasswordModify> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Mot de passe',
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
                child: TextFormField(
                  initialValue: "",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      hintText: "Mot de passe actuel ",
                      labelText: "Mot de passe actuel ",
                      labelStyle: TextStyle(fontFamily: familyFont)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: TextFormField(
                  initialValue: "",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      hintText: "Nouveau mot de passe",
                      labelText: "Nouveau ",
                      labelStyle: TextStyle(fontFamily: familyFont)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: TextFormField(
                  initialValue: "",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      hintText: "Confirmation du mot de passe",
                      labelText: "Confirmation",
                      labelStyle: TextStyle(fontFamily: familyFont)),
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
