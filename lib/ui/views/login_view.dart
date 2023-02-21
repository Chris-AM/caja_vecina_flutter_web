import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';
import 'package:mockup_caja_vecina/ui/buttons/link_text.dart';

import '../layouts/auth/widgets/input_titles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
              child: Column(
            children: [
              const InputTitles(title: 'Mail'),
              TextFormField(
                // validator: ,
                style: const TextStyle(color: Colors.white),
                decoration: buildInputDecoration(
                  hint: 'lalala@lalala.cl',
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
              LinkText(
                text: '¿Olvidaste Tu Contraseña?',
                onPressed: () {
                  // ignore: todo
                  //! TODO GOTO FORGOTTEN PASS
                  // ignore: avoid_print
                  print('GOTO 4GO10 P4SS');
                },
              ),
            ],
          )),
        ),
      ),
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
