import 'package:flutter/material.dart';

class AppTheme {
  //? Colors
  static const Color primaryColor = Colors.orange;
  static const Color secondaryColor = Colors.white;
  static const Color linksColor = Colors.blue;
  static const Color fontColor = Color.fromARGB(255, 47, 61, 69);
  static const Color thirdColor = Color.fromARGB(255, 44, 50, 54);

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

  static Container cajaVecinaImage() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
          child: Image(
            image: AssetImage('caja-vecina.png'),
          ),
        ),
      ),
    );
  }

  //? Decorations
  static BoxDecoration loginBackgroundDecoration() {
    return BoxDecoration(
      borderRadius: AppTheme.rounded10,
      boxShadow: [AppTheme.boxShadow],
      color: AppTheme.secondaryColor,
    );
  }

  //? Auth Inputs
  static InputDecoration buildInputDecoration({
    String? hint,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hint,
      hintStyle: const TextStyle(
        fontSize: 14,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}
