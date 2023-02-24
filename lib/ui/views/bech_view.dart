import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:provider/provider.dart';
import 'package:rut_utils/rut_utils.dart';

import '../../shared/shared.dart';
import '../buttons/buttons.dart';
import '../layouts/auth/widgets/widgets.dart';

class BechView extends StatelessWidget {
  const BechView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitle(),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          height: 350,
          decoration: AppTheme.loginBackgroundDecoration(),
          child: Container(
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const BechForm()),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
