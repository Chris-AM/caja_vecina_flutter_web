import 'package:flutter/material.dart';

import 'package:mockup_caja_vecina/shared/shared.dart';
import 'custom_title.dart';

class CajaVecinaAccess extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const CajaVecinaAccess({
    super.key,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      //? View Container
      child: Container(
        height: height,
        width: width,
        decoration: _customDecoration(),
        child: Column(
          children: [
            const CustomTitle(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height * .8,
              width: width,
              child: child,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _customDecoration() {
    return BoxDecoration(
      borderRadius: AppTheme.rounded10,
      boxShadow: [AppTheme.boxShadow],
      color: AppTheme.loginBackground,
    );
  }
}
