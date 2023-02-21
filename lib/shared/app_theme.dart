import 'package:flutter/material.dart';

class AppTheme {
  //? Colors
  static const Color loginBackground = Colors.white;
  static const Color fontColor = Colors.black;
  static const Color linksColor = Colors.blue;
  static const Color button = Colors.orange;

  //? Shapes
  static BorderRadiusGeometry rounded10 = BorderRadius.circular(10.0);
  static BorderRadiusGeometry rounded = BorderRadius.circular(80.0);
  static BoxShadow boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );

  //? Images
  static BoxDecoration backgroundImage() {
    return const BoxDecoration(
        image: DecorationImage(
      image: AssetImage('background-image.png'),
      fit: BoxFit.cover,
    ));
  }
}
