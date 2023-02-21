import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';
import 'package:mockup_caja_vecina/ui/views/bech_redirection_view.dart';

class BechRedirection extends StatelessWidget {
  final double width;
  final double height;
  const BechRedirection({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _customDecoration(),
      width: width,
      height: height,
      child: const BechRedirectionView(),
    );
  }

  BoxDecoration _customDecoration() {
    return BoxDecoration(
      borderRadius: AppTheme.rounded10,
      color: AppTheme.loginBackground,
    );
  }
}
