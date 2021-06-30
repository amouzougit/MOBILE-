import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustler/ui/pages/principal/profil/informations.dart';

import '../../../../constants.dart';

class Infos extends StatefulWidget {
  const Infos({Key? key}) : super(key: key);

  @override
  _InfosState createState() => _InfosState();
}

class _InfosState extends State<Infos> {
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: kPrimaryColor,
              size: 20,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Informations()));
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.place, size: 15),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Adresse',
                              maxLines: 2,
                              style: GoogleFonts.nunito(
                                  color: Colors.grey[700], fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                    radius: 26,
                    backgroundColor: kPrimaryColor,
                    child:
                        /*Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/avatar.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ),*/
                        Icon(
                      Icons.person_pin,
                      size: 30,
                      color: Colors.white,
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 200, 15),
              height: 0.5,
              color: Colors.grey[400],
            ),
            Container(
              width: size.width,
              child: Text('Pas de description',
                  style: GoogleFonts.nunito(
                      color: Colors.grey[700], fontSize: 15)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              height: 0.5,
              color: Colors.grey[400],
            ),
            Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Membre depuis',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("date d'inscription",
                      style: GoogleFonts.nunito(
                          color: Colors.grey[700], fontSize: 15)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
