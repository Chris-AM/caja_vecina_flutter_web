import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';

class SplashLayout extends StatelessWidget {
  const SplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Add a ProgressIndicator with an Image inside
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.scale(
            scale: 4,
            child: const CircularProgressIndicator(
              color: AppTheme.primaryColor,
            ),
          ),
          Image.asset(
            'logo_banco.png',
            width: 50,
            height: 50,
          ),
        ],
      ),
    ));
  }
}
