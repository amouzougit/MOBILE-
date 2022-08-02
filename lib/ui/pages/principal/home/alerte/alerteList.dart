import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hustler/call_api/security.dart';
import 'package:hustler/ui/pages/principal/home/alerte/contenuAlt.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../constants.dart';

class AlerteList extends StatefulWidget {
  const AlerteList({Key? key}) : super(key: key);
  @override
  _AlerteListState createState() => _AlerteListState();
}

class _AlerteListState extends State<AlerteList> {
  ApiSecurityService apiSecurity = new ApiSecurityService();

  String query = '';

  void setQuery(text) {
    setState(() {
      this.query = text;
      if (this.query.isNotEmpty) {
        List queryData = alertList.where((i) {
          String titre = i["titre"];
          String description = i["description"];
          bool existInTitre =
              titre.toLowerCase().contains(this.query.toLowerCase());
          bool existInDescription =
              description.toLowerCase().contains(this.query.toLowerCase());

          return existInTitre || existInDescription;
        }).toList();
        if (queryData.length >= 1) {
          alertList = queryData;
        } else {
          alertList = alertListBase;
        }
      } else {
        alertList = alertListBase;
      }
    });
  }

  List alertList = [];
  List alertListBase = [];

  Future<Object?> initData() async {
    final prefs = await SharedPreferences.getInstance();
    List data = await this.apiSecurity.getPosts();

    setState(() {
      alertList = data;
      alertListBase = data;

      if (data.runtimeType.toString() ==
          "_InternalLinkedHashMap<String, dynamic>") {
        print('okiii');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      //color: Colors.grey[300],
      child: Column(
        children: [
          /*Container(
            //padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            //color: kPrimaryColor,
            child: SvgPicture.asset(
              "assets/icons/niceborder.svg",
              height: size.height * 0.1,
              color: Colors.white,
            ),
          ),*/
          Container(
            //height: size.height * 0.15,
            //color: Colors.grey[200],
            padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.grey,
                                  offset: Offset(0, 1))
                            ]),
                        child: TextField(
                          onChanged: (value) => {this.setQuery(value)},
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Cherchez une offre',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey,
                                offset: Offset(0, 1)),
                          ]),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Icon(
                            Icons.search,
                            //size: 26,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(), primary: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: alertList.map((alerte) {
                return AlertCard(alerte);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class AlertCard extends StatelessWidget {
  final Map alerteData;
  AlertCard(this.alerteData);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AlerteContenu(alerteData)));
      },
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          //height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //height: size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(12)),
                ),
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.6,
                        child: Text(
                          alerteData['titre'],
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      // Container(
                      //   //width: size.width * 0.3,
                      //   padding: EdgeInsets.all(3),
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       //color: kPrimaryColor,
                      //       border: Border.all(color: kPrimaryColor)),
                      //   child: Center(
                      //     child: Text(
                      //       'Offre',
                      //       style: TextStyle(
                      //         fontSize: 10,
                      //         color: kPrimaryColor,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 4),
                child: Container(
                  child: Text(alerteData['description'],
                      maxLines: 2, style: GoogleFonts.notoSerif(fontSize: 14)),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.fromLTRB(10, 7, 10, 0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           CircleAvatar(
              //               radius: 15,
              //               backgroundColor: Colors.blueGrey,
              //               child: Icon(
              //                 Icons.person,
              //                 size: 22,
              //                 color: Colors.white,
              //               )),
              //           SizedBox(
              //             width: 7,
              //           ),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Par ' + ' Nom ',
              //                 style: TextStyle(
              //                   fontSize: 12,
              //                   //color: Colors.grey[500],
              //                   fontWeight: FontWeight.w800,
              //                 ),
              //               ),
              //               Text(
              //                 'date',
              //                 style: TextStyle(
              //                   fontSize: 12,
              //                   color: Colors.grey[500],
              //                   fontWeight: FontWeight.w400,
              //                 ),
              //               ),
              //             ],
              //           )
              //         ],
              //       ),
              //       Container(
              //         width: size.width * 0.3,
              //         padding: EdgeInsets.all(2),
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(3),
              //             color: kPrimaryColor),
              //         child: Center(
              //           child: Text(
              //             'price' + ' cfa ',
              //             style: TextStyle(
              //                 color: Colors.white, fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Container(
                margin: EdgeInsets.fromLTRB(10, 8, 10, 5),
                height: 0.5,
                color: Colors.grey[400],
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.fromLTRB(10, 3, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.date_range_outlined,
                          color: Colors.blueGrey,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: size.width * 0.4,
                          child: Text(
                            DateFormat('yMd').format(
                                DateTime.parse(alerteData["createDate"])),
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[850],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    // Text(
                    //   'offre number' + ' offres88888 ',
                    //   style: TextStyle(
                    //     fontSize: 14,
                    //     color: Colors.grey[850],
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
