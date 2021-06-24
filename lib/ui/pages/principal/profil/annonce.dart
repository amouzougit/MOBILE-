import 'package:flutter/material.dart';

import '../../../../constants.dart';

class Annonces extends StatefulWidget {
  const Annonces({Key? key}) : super(key: key);

  @override
  _AnnoncesState createState() => _AnnoncesState();
}

class _AnnoncesState extends State<Annonces> {
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 10),
                color: Colors.white,
                height: size.height * 0.08,
                width: size.width,
                child: Text("Mes annonces",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
