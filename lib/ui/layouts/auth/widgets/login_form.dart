import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';
import 'package:mockup_caja_vecina/ui/buttons/buttons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(builder: (context) {
        final loginFormProvider =
            Provider.of<LoginFormProvider>(context, listen: true);
        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 370,
          ),
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
                  onChanged: (value) => loginFormProvider.email = value,
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
                  onChanged: (value) => loginFormProvider.password = value,
                  obscureText: loginFormProvider.obscureText,
                  style: const TextStyle(color: Colors.black),
                  decoration: AppTheme.buildInputDecoration().copyWith(
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
                      final isValid = loginFormProvider.validateForm();
                      if (isValid) {
                        authProvider.emailLogin(
                          loginFormProvider.email,
                          loginFormProvider.password,
                        );
                      }
                    },
                    text: 'Continuar',
                    isFilled: true,
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => DoNothingAction(), // call the route here
                  child: const Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(fontSize: 16.0, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
