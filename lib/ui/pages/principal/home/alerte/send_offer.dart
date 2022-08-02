import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hustler/call_api/security.dart';
import 'package:hustler/ui/pages/principal/home/alerte/alerteList.dart';
import 'package:hustler/ui/pages/principal/menu.dart';

import '../../../../../constants.dart';

class SendOffer extends StatefulWidget {
  // const SendOffer({Key? key}) : super(key: key);

  Map offre;
  SendOffer(this.offre);
  @override
  State<StatefulWidget> createState() {
    return _SendOfferState(this.offre);
  }
  // @override
  // _SendOfferState createState() => _SendOfferState();
}

class _SendOfferState extends State<SendOffer> {
  Map offre;
  _SendOfferState(this.offre);
  String description = '';
  String telephone = '';
  ApiSecurityService apiSecurity = new ApiSecurityService();

  void setDescription(text) {
    this.description = text;
  }

  void setTelephone(text) {
    this.telephone = text;
  }

  void envoyerDemande() async {
    var data = await this
        .apiSecurity
        .postuler(this.offre["id"], this.description, this.telephone);

    if (data == "POSTULER") {
      final snackBarMessage = SnackBar(content: Text("Vous avez postuler"));
      ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
    } else if (data == "DEJA_POSTULER") {
      final snackBarMessage =
          SnackBar(content: Text("Vous avez deja  postuler a cette offre"));
      ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
    } else {
      final snackBarMessage = SnackBar(
          content: Text(
              "Erreur subvenir lors de votre demande, veilllez revenir reesayer plus tard"));
      ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
    }
    // final snackBarMessage = SnackBar(content: Text("Vous avez postuler"));
    // ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
    // if (data) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => AlerteList()));
    // } else {
    //   final snackBarMessage = SnackBar(content: Text("${data}"));
    //   ScaffoldMessenger.of(context).showSnackBar(snackBarMessage);
    // }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.cancel,
            color: kPrimaryColor,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SvgPicture.asset(
              //   "assets/icons/send_offer.svg",
              //   height: size.height * 0.45,
              // ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 10, left: 0, right: 10),
                child: Text(
                  'Envoyer votre demande',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Text(
                  "Décrivez en quelques lignes votre experience et dite pourquoi vous ete qualifier pour cet offre",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
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

              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                child: TextFormField(
                  onChanged: (value) => {this.setTelephone(value)},
                  keyboardType: TextInputType.number,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: "telephone",
                      labelText: "telephone ",
                      labelStyle: TextStyle(fontFamily: familyFont)),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 0),
              //   child: Text(
              //     'Postuler maintenant et laissez le client vous contacter.',
              //     style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: kPrimaryColor),
        child: TextButton(
          onPressed: () {
            this.envoyerDemande();
          },
          child: Text(
            'Postuler',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
