import 'package:flutter/material.dart';

import 'package:mockup_caja_vecina/shared/shared.dart';
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
        height: 450,
        width: viewSize,
        decoration: _customDecoration(),
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

  BoxDecoration _customDecoration() {
    return BoxDecoration(
      borderRadius: AppTheme.rounded10,
      boxShadow: [AppTheme.boxShadow],
      color: AppTheme.loginBackground,
    );
  }
}
