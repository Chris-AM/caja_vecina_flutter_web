import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/ui/buttons/link_text.dart';
import 'package:mockup_caja_vecina/ui/buttons/login_button.dart';

import '../../shared/shared.dart';
import '../layouts/auth/widgets/input_titles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          children: [
            formBuilding(),
            const SizedBox(height: 20),
            const Text('¿No tienes cuenta CompraAquí?'),
            const SizedBox(height: 20),
            const LinkText(text: 'Crear Cuenta'),
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
            const InputTitles(title: 'Mail'),
            TextFormField(
              // validator: ,
              style: const TextStyle(color: Colors.white),
              decoration: AppTheme.buildInputDecoration(
                hint: 'lalala@lalala.cl',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              // validator: ,
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: AppTheme.buildInputDecoration(),
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
              text: '¿Olvidaste Tu Contraseña?',
              onPressed: () {
                // ignore: todo
                //! TODO GOTO FORGOTTEN PASS
                // ignore: avoid_print
                print('GOTO 4GO10 P4SS');
              },
            ),
          ],
        ),
      ),
    );
  }
}
