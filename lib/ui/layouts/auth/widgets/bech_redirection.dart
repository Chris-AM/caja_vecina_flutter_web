import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';
import 'package:mockup_caja_vecina/ui/views/bech_redirection_view.dart';

class BechRedirection extends StatelessWidget {
  const BechRedirection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewSize = size.width / 3;

    return Container(
      decoration: _customDecoration(),
      width: viewSize,
      height: 150,
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
