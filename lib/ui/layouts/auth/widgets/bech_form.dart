import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';
import 'package:mockup_caja_vecina/ui/buttons/buttons.dart';
import 'package:mockup_caja_vecina/ui/layouts/auth/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rut_utils/rut_utils.dart';

class BechForm extends StatelessWidget {
  const BechForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BechFormProvider(),
      child: Builder(builder: (context) {
        final bechFormProvider =
            Provider.of<BechFormProvider>(context, listen: true);
        return Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 370),
                child: Form(
                  key: bechFormProvider.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rut Usuario',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        validator: validateRut,
                        inputFormatters: [RutFormatter()],
                        style: const TextStyle(color: Colors.black),
                        maxLength: 12,
                        decoration: AppTheme.buildInputDecoration(
                          hint: '11.111.111-1',
                        ),
                        onChanged: (value) => bechFormProvider.rut = value,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Clave',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese su clave';
                          }
                          return null;
                        },
                        onChanged: (value) => bechFormProvider.password = value,
                        obscureText: bechFormProvider.obscureText,
                        style: const TextStyle(color: Colors.black),
                        decoration:
                            AppTheme.buildInputDecoration(hint: '**********')
                                .copyWith(
                          suffixIcon: IconButton(
                            onPressed: () {
                              if (bechFormProvider.password.isEmpty) {
                                return;
                              }
                              bechFormProvider.updateObscureText();
                            },
                            icon: Icon(
                              bechFormProvider.obscureText
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
                          onPressed: () {},
                          text: 'Ingresar',
                          isFilled: true,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: LinkText(
                          text: '¿Problemas con tu clave?',
                          onPressed: () {
                            // ignore: todo
                            //! TODO GOTO FORGOTTEN PASS
                            // ignore: avoid_print
                            print('GOTO 4GO10 P4SS');
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
