import 'package:flutter/material.dart';

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
const String familyFont = 'Sofia';
Color kPrimaryColor = Color(hexColor('#6C63FF'));
const kPrimaryLightColor = Color.fromARGB(255, 247, 249, 252);
