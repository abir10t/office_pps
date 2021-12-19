import 'package:flutter/material.dart';

class ColorConstants
{


  static Color black = Color(0xFF000000);
  static Color white = Color(0xFFFFFFFF);


  static Color backgroundPrimaryColor = hexToColor("#16232F");
  static Color buttonPrimaryColor = hexToColor("#0072DB");
  static Color textFieldUnderlineColor = hexToColor("#414B55");
  static Color sectionPrimaryColor = hexToColor("#1B2E3F");
  static Color drawerTextColor = hexToColor("#C1DAFF");
  static Color sectionSecondaryColor = hexToColor("#263E53");






}

Color hexToColor(String hex)
{
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex), 'hex color must be #rrggbb or #rrggbbaa');

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xff000000 : 0x00000000),);
}
