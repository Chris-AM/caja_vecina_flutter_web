import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/ui/buttons/link_text.dart';
import 'package:mockup_caja_vecina/ui/buttons/login_button.dart';
import 'package:provider/provider.dart';

import '../../shared/shared.dart';
import '../layouts/auth/widgets/input_titles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LoginFormProvider(),
        child: Builder(
          builder: (context) {
            final loginFormProvider =
                Provider.of<LoginFormProvider>(context, listen: false);
            return Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 370),
                      child: Form(
                        key: loginFormProvider.formKey,
                        child: Column(
                          children: [
                            const InputTitles(title: 'Mail'),
                            TextFormField(
                              validator: (value) {
                                if (!EmailValidator.validate(value ?? '')) {
                                  return 'Email Inválido';
                                }
                                return null;
                              },
                              onChanged: (value) =>
                                  loginFormProvider.email = value,
                              style: const TextStyle(color: Colors.black),
                              decoration: AppTheme.buildInputDecoration(
                                hint: 'lalala@lalala.cl',
                              ),
                            ),
                            const SizedBox(height: 20),
                            //? Password
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Ingrese su contraseña';
                                }
                                return null;
                              },
                              onChanged: (value) =>
                                  loginFormProvider.password = value,
                              obscureText: true,
                              style: const TextStyle(color: Colors.black),
                              decoration: AppTheme.buildInputDecoration(),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 370,
                              child: LoginButton(
                                onPressed: () {
                                  loginFormProvider.validateForm();
                                },
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
                    ),
                    const SizedBox(height: 20),
                    const Text('¿No tienes cuenta CompraAquí?'),
                    const SizedBox(height: 20),
                    const LinkText(text: 'Crear Cuenta'),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
