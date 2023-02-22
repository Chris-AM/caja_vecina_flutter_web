import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/router/router.dart';
import 'package:mockup_caja_vecina/services/navigator_service.dart';
import 'package:mockup_caja_vecina/ui/layouts/auth/auth_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const CajaVecina());
}

class CajaVecina extends StatelessWidget {
  const CajaVecina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Maqueta Caja Vecina',
        initialRoute: Flurorouter.loginRoute,
        onGenerateRoute: Flurorouter.router.generator,
        navigatorKey: NavigatorService.navigatorKey,
        builder: (_, child) {
          return AuthLayout(child: child!);
        });
  }
}
