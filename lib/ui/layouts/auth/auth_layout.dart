import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/ui/layouts/auth/widgets/widgets.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //? Desktop
          _DesktopBody(child)
          //? Mobile
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;
  const _DesktopBody(this.child);

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
          const CajaVecinaImage(),
          CajaVecinaAccess(child: child),
          const SizedBox(
            height: 30,
          ),
          const BechRedirection(),
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
