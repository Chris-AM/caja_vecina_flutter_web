import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_caja_vecina/app_theme.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Ingresa al portal caja vecina',
              style: GoogleFonts.montserratAlternates(
                fontSize: 14,
                color: AppTheme.fontColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
