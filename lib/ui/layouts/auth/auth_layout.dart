import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/app_theme.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //? Desktop
          _DesktopBody(),
          //? Mobile
          //? LinksBar
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height,
        width: size.width,
        color: AppTheme.loginBackground,
        child: Column(
          children: [
            //? Background
            Container(
              color: AppTheme.fontColor,
            ),
            Center(
              child: Container(
                height: 400,
                width: 300,
                color: AppTheme.linksColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
