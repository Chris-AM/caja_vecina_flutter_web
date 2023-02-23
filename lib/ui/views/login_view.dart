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
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 370),
                    child: Form(
                      key: loginFormProvider.formKey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (value) {
                              if (!EmailValidator.validate(value ?? '')) {
                                return 'Ingresa un email válido';
                              }
                              return null;
                            },
                            onChanged: (value) =>
                                loginFormProvider.email = value,
                            style: const TextStyle(color: Colors.black),
                            decoration: AppTheme.buildInputDecoration(
                              hint: 'juanmolinar@almacenaqui.cl',
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Contraseña',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5),
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
                            decoration:
                                AppTheme.buildInputDecoration().copyWith(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  loginFormProvider.updateObscureText();
                                },
                                icon: Icon(
                                  loginFormProvider.obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
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
                          GestureDetector(
                            onTap: () =>
                                DoNothingAction(), // call the route here
                            child: const Text(
                              "¿Olvidaste tu contraseña?",
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                  GestureDetector(
                    onTap: () => DoNothingAction(), // call the route here
                    child: const Text(
                      "Crear cuenta",
                      style: TextStyle(fontSize: 16.0, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
