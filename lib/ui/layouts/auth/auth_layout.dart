import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';
import 'package:mockup_caja_vecina/ui/layouts/auth/widgets/widgets.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          (size.width > 1000)
              ? _DesktopBody(
                  child,
                  400,
                  450,
                )
              : _MobileBody(
                  child,
                  400,
                  450,
                ),
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const _DesktopBody(
    this.child,
    this.width,
    this.height,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //? Background
    return Container(
      width: size.width,
      height: size.height,
      decoration: AppTheme.backgroundImage(),
      child: Column(
        children: [
          const CajaVecinaImage(),
          CajaVecinaAccess(
            height: height,
            width: width,
            child: child,
          ),
          const SizedBox(
            height: 30,
          ),
          BechRedirection(
            height: 120,
            width: width,
          ),
        ],
      ),
    );
  }
}

class _MobileBody extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const _MobileBody(
    this.child,
    this.width,
    this.height,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //? Background
    return Container(
      width: size.width,
      height: size.height,
      decoration: AppTheme.backgroundImage(),
      child: Column(
        children: [
          const CajaVecinaImage(),
          CajaVecinaAccess(
            height: height,
            width: width,
            child: child,
          ),
          const SizedBox(
            height: 30,
          ),
          BechRedirection(
            height: 120,
            width: width,
          ),
        ],
      ),
    );
  }
}
