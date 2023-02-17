import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/router/router.dart';
import 'package:mockup_caja_vecina/ui/layouts/auth/auth_layout.dart';

void main() {
  Flurorouter.configureRoutes;
  runApp(const CajaVecina());
}

class CajaVecina extends StatelessWidget {
  const CajaVecina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Maqueta Caja Vecina',
        initialRoute: Flurorouter.loginRoute,
        onGenerateRoute: Flurorouter.router.generator,
        builder: (_, child) {
          return const AuthLayout();
        });
  }
}
