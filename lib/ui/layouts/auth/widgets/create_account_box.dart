
import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/ui/buttons/buttons.dart';

class CreateAccountBox extends StatelessWidget {
  const CreateAccountBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            '¿No tienes cuenta Compraqui?',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: LinkText(
            text: 'Crear Cuenta',
            onPressed: () => DoNothingAction(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
