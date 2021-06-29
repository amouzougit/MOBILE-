import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class DnaissModify extends StatefulWidget {
  const DnaissModify({Key? key}) : super(key: key);

  @override
  _DnaissModifyState createState() => _DnaissModifyState();
}

class _DnaissModifyState extends State<DnaissModify> {
  onDateChanged(DateTime date) {}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Date de naissance',
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
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1915),
                  lastDate: DateTime(2030),
                  onDateChanged: onDateChanged,
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
