import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hustler_mob/ui/pages/principal/home/home.dart';

const Color _colorOne = Color(0x33000000);
const Color _colorTwo = Color(0x24000000);
const Color _colorThree = Color(0x1F000000);

class Segment extends StatefulWidget {
  const Segment({Key? key}) : super(key: key);

  @override
  _SegmentState createState() => _SegmentState();
}

class _SegmentState extends State<Segment> {
  int sharedValue = 0;
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Offres'),
    1: Text('Agents'),
  };

  final Map<int, Widget> icons = const <int, Widget>{
    0: Home(),
    1: Center(
      child: Text('ca va aller'),
    ),
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
            ),
            SizedBox(
              width: size.width * 0.5,
              child: CupertinoSegmentedControl<int>(
                children: logoWidgets,
                onValueChanged: (int val) {
                  setState(() {
                    sharedValue = val;
                  });
                },
                groupValue: sharedValue,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32.0,
                  horizontal: 16.0,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 64.0,
                    horizontal: 16.0,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        offset: Offset(0.0, 3.0),
                        blurRadius: 5.0,
                        spreadRadius: -1.0,
                        color: _colorOne,
                      ),
                      BoxShadow(
                        offset: Offset(0.0, 6.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        color: _colorTwo,
                      ),
                      BoxShadow(
                        offset: Offset(0.0, 1.0),
                        blurRadius: 18.0,
                        spreadRadius: 0.0,
                        color: _colorThree,
                      ),
                    ],
                  ),
                  //child: icons[sharedValue],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
