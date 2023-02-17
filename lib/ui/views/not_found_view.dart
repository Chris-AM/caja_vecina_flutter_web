import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Center(
        child: Text(
          '404 NOT FOUND',
          style: GoogleFonts.montserratAlternates(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
