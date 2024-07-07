import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xFF3B3B3B);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static TextStyle textStyle = TextStyle(
    //dynamic
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    //dynamic
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    //using const because is not dynamic
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    //using const because is not dynamic
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    //using const because is not dynamic
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
