import 'package:flutter/material.dart';

import '../buttons/buttons.dart';
import '../layouts/auth/widgets/widgets.dart';

class BechView extends StatelessWidget {
  const BechView({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          children: [
            formBuilding(),
          ],
        ),
      ),
    );
  }

  ConstrainedBox formBuilding() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 370),
      child: Form(
          child: Column(
        children: [
          const InputTitles(title: 'RUT'),
          TextFormField(
            // validator: ,
            style: const TextStyle(color: Colors.white),
            decoration: buildInputDecoration(
              hint: '*********',
            ),
          ),
          const SizedBox(height: 20),
          const InputTitles(title: 'Contraseña'),
          TextFormField(
            // validator: ,
            obscureText: true,
            style: const TextStyle(color: Colors.white),
            decoration: buildInputDecoration(),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 370,
            child: LoginButton(
              onPressed: () {},
              text: 'Continuar',
              isFilled: true,
            ),
          ),
          const SizedBox(height: 20),
          LinkText(
            text: 'Problemas con tu Contraseña?',
            onPressed: () {
              // ignore: todo
              //! TODO GOTO FORGOTTEN PASS
              // ignore: avoid_print
              print('GOTO 4GO10 P4SS');
            },
          ),
        ],
      )),
    );
  }

  InputDecoration buildInputDecoration({
    String? hint,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      hintText: hint,
    );
  }
}
