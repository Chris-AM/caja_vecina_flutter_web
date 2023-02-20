import 'package:flutter/material.dart';

import 'package:mockup_caja_vecina/app_theme.dart';
import 'custom_title.dart';

class CajaVecinaAccess extends StatelessWidget {
  final Widget child;
  const CajaVecinaAccess({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewSize = size.width / 3;
    return Center(
      //? View Container
      child: Container(
        height: 500,
        width: viewSize,
        decoration: customDecoration(),
        child: Column(
          children: [
            const CustomTitle(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 350,
              width: viewSize,
              child: child,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration customDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
      color: AppTheme.loginBackground,
    );
  }
}
