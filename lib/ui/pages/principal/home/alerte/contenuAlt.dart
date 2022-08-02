import 'package:flutter/material.dart';
import 'package:hustler/call_api/security.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:hustler/constants.dart';
import 'package:hustler/ui/pages/principal/home/alerte/alerteConditionsAccept.dart';
import 'package:hustler/ui/pages/principal/home/alerte/send_offer.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlerteContenu extends StatefulWidget {
  //const AlerteContenu({Key? key}) : super(key: key);

  Map offre;
  AlerteContenu(this.offre);
  @override
  State<StatefulWidget> createState() {
    return _AlerteContenuState(this.offre);
  }

  // @override
  //_AlerteContenuState createState() => _AlerteContenuState();
}

class _AlerteContenuState extends State<AlerteContenu> {
  Map offre;
  String authUserId = "";

  ApiSecurityService apiSecurity = new ApiSecurityService();

  _AlerteContenuState(this.offre);

  Future<Object?> initData() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      this.authUserId = prefs.get("id").toString();
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  Widget? _renderDemandes() {
    // print(this.offre["idUser"]);
    // print(this.authUserId);
    if (this.offre["idUser"] == this.authUserId) {
      return Column(
        children: this.offre["demandes"].map<Widget>((d) {
          return JobberCard(d);
        }).toList(),
      );
    }
    return null;
  }

  bool authUserIsOffreOwner() {
    return this.offre["idUser"] == this.authUserId;
  }

  @override
  Widget build(BuildContext context) {
    //print(this.offre);
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
              Icons.share,
              color: kPrimaryColor,
              size: 20,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.offre["titre"],
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          'Publié le : ' +
                              DateFormat('yMd').format(
                                  DateTime.parse(this.offre["createDate"])),
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Row(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         CircleAvatar(
                      //           radius: 25,
                      //           backgroundColor: Colors.blueGrey,
                      //           child: Container(
                      //             decoration: BoxDecoration(
                      //               borderRadius:
                      //                   BorderRadius.all(Radius.circular(25)),
                      //               image: DecorationImage(
                      //                 image: AssetImage('assets/images/ia.png'),
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //           ),
                      //           /*Icon(
                      //       Icons.person,
                      //       size: 22,
                      //       color: Colors.white,
                      //     )*/
                      //         ),
                      //         SizedBox(
                      //           width: 7,
                      //         ),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           mainAxisAlignment: MainAxisAlignment.start,
                      //           children: [
                      //             Text(
                      //               ' Username ',
                      //               style: TextStyle(
                      //                 fontSize: 15,
                      //                 //color: Colors.grey[500],
                      //                 fontWeight: FontWeight.w800,
                      //               ),
                      //             ),
                      //             Padding(
                      //               padding: const EdgeInsets.all(5.0),
                      //               child: Text(
                      //                 'Voir le profil',
                      //                 style: TextStyle(
                      //                   fontSize: 12,
                      //                   fontWeight: FontWeight.w400,
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         )
                      //       ],
                      //     ),
                      //     Icon(
                      //       Icons.arrow_forward_ios_rounded,
                      //       size: 15,
                      //     )
                      //   ],
                      // ),

                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                        child: Text(
                          this.offre["description"],
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Text(
                        "Type de service",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
                          "Offre",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                      //   height: 0.5,
                      //   color: Colors.grey[400],
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 12.0),
                      //   child: Text(
                      //     "Autres informations",
                      //     style: TextStyle(
                      //         fontSize: 16, fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       height: size.height * 0.23,
                      //       width: size.width * 0.9,
                      //       decoration: BoxDecoration(
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(15)),
                      //         image: DecorationImage(
                      //           image: AssetImage('assets/images/ia.png'),
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                      //   height: 0.5,
                      //   color: Colors.grey[400],
                      // ),
                      // Text(
                      //   "Expiration de l'annonce",
                      //   style: TextStyle(
                      //       fontSize: 16, fontWeight: FontWeight.bold),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 7.0, bottom: 5.0),
                      //   child: Text(
                      //     "La date d'expiration",
                      //     style: TextStyle(
                      //       fontSize: 13,
                      //     ),
                      //   ),
                      // ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                      Text(
                        "Condition",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0, bottom: 5.0),
                        child: Text(
                          "Le proprietaire vous contactera apres l'etude de votre demande",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                        height: 0.5,
                        color: Colors.grey[400],
                      ),

                      Text(
                        this.authUserIsOffreOwner() ? "Demandes" : "",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 90),
                        // child: Column(
                        //   children: this.offre["demandes"].map<Widget>((d) {
                        //     return JobberCard(d);
                        //   }).toList(),
                        // ),
                        child: this._renderDemandes(),
                      )
                    ],
                  )),
              // Container(
              //   margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
              //   height: 0.5,
              //   color: Colors.grey[400],
              // ),
              // Container(
              //   width: size.width,
              //   height: size.height * 0.4,
              //   color: Colors.grey[100],
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(
              //             top: 10, left: 15, bottom: 12.0),
              //         child: Text(
              //           'n jobbers intéressés',
              //           style: TextStyle(
              //               fontSize: 18, fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //       // SingleChildScrollView(
              //       //   scrollDirection: Axis.horizontal,
              //       //   child: Row(
              //       //     children: jobberList.map((jobber) {
              //       //       return JobberCard(jobber);
              //       //     }).toList(),
              //       //   ),
              //       // ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        // decoration: BoxDecoration(),
      ),
      bottomSheet: Container(
        height: size.height * 0.1,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 6,
              spreadRadius: 4,
              color: Colors.grey,
              offset: Offset(0, 3))
        ]),
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 7.0),
              //       child: Text(
              //         'Budget : ',
              //         style: TextStyle(fontSize: 12),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 8.0),
              //       child: Text('10000 ' + ' FCFA',
              //           style: TextStyle(
              //               fontSize: 16, fontWeight: FontWeight.bold)),
              //     )
              //   ],
              // ),

              Container(
                margin: EdgeInsets.only(top: 13, bottom: 13),
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: kPrimaryColor),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SendOffer(this.offre)));
                  },
                  child: Text(
                    'Faire une demande',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JobberCard extends StatelessWidget {
  final Map jobberData;
  JobberCard(this.jobberData);
  String getTelephone() {
    if (jobberData['telephone'] != null) {
      return jobberData['telephone'];
    }
    return "";
  }

  String getDescription() {
    if (jobberData['description'] != null) {
      return jobberData['description'];
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 10),
      child: Container(
        //height: size.height * 0.2,
        width: size.width * 1,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            // Container(
            //   height: size.height * 0.1,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(20),
            //         topRight: Radius.circular(20)),
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/ia.png'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              child: Text(
                this.getTelephone(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              child: Text(
                this.getDescription(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
