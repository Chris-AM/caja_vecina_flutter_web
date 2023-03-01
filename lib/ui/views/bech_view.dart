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
          height: 450,
          decoration: AppTheme.loginBackgroundDecoration(),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  padding: const EdgeInsets.only(right: 0, left: 15),
                  child: Image.asset(
                    'banner_banco.png',
                    width: 80,
                    height: 40,
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                  color: const Color.fromARGB(50, 192, 192, 192),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const BechForm()),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
