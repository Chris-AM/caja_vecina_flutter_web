import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/app_theme.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    //? Background
    return Container(
      width: size.width,
      height: size.height,
      decoration: backgroundImage(),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 80),
                child: Image(
                  image: AssetImage('caja-vecina.png'),
                ),
              ),
            ),
          ),
          Center(
            //? View Container
            child: Container(
              height: 400,
              width: 300,
              color: AppTheme.linksColor,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration backgroundImage() {
    return const BoxDecoration(
        image: DecorationImage(
      image: AssetImage('background-image.png'),
      fit: BoxFit.cover,
    ));
  }
}
