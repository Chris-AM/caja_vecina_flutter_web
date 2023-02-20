import 'package:flutter/material.dart';

class AppTheme {
  //? Colors
  static const Color loginBackground = Color.fromARGB(255, 255, 255, 255);
  static const Color fontColor = Color.fromARGB(255, 49, 56, 61);
  static const Color linksColor = Color.fromARGB(255, 110, 131, 166);

  //? Shapes
  static BorderRadiusGeometry rounded10 = BorderRadius.circular(10.0);
  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );
}
