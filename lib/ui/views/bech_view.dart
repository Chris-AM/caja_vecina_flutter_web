import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:provider/provider.dart';

import '../../shared/shared.dart';
import '../buttons/buttons.dart';
import '../layouts/auth/widgets/widgets.dart';

class BechView extends StatelessWidget {
  const BechView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BechFormProvider(),
      child: Builder(builder: (context) {
        final bechFormProvider =
            Provider.of<BechFormProvider>(context, listen: false);
        return Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 370),
                  child: Form(
                    key: bechFormProvider.formKey,
                    child: Column(
                      children: [
                        const InputTitles(title: 'RUT'),
                        TextFormField(
                          // validator: ,
                          style: const TextStyle(color: Colors.white),
                          decoration: AppTheme.buildInputDecoration(
                            hint: '11.111.111-1',
                          ),
                        ),
                        const SizedBox(height: 20),
                        const InputTitles(title: 'Contraseña'),
                        TextFormField(
                          // validator: ,
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration:
                              AppTheme.buildInputDecoration(hint: '**********'),
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
                    ),
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
