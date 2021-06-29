import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class UsernamesModify extends StatefulWidget {
  const UsernamesModify({Key? key}) : super(key: key);

  @override
  _UsernamesModifyState createState() => _UsernamesModifyState();
}

class _UsernamesModifyState extends State<UsernamesModify> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Noms',
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
                  initialValue: "Prenom",
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
                      hintText: "Prenom",
                      labelText: "Prenom",
                      labelStyle: TextStyle(fontFamily: familyFont)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: TextFormField(
                  initialValue: "Nom",
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
                      hintText: "Nom",
                      labelText: "Nom",
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
