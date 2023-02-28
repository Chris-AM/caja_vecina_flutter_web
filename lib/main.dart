import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/router/router.dart';
import 'package:mockup_caja_vecina/services/services.dart';
import 'package:mockup_caja_vecina/ui/layouts/layouts.dart';

void main() async {
  await LocalStorage.configurePreferences();
  Flurorouter.configureRoutes();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false, //? Constructor is called immediately
          create: (_) => AuthProvider(),
        ),
      ],
      child: const CajaVecina(),
    );
  }
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
          final authProvider = Provider.of<AuthProvider>(context);
          if (authProvider.authStatus == AuthStatus.checking) {
            return const SplashLayout();
          }
          if (authProvider.authStatus == AuthStatus.unauthenticated) {
            return AuthLayout(child: child!);
          } else {
            return DashboardLayout(child: child!);
          }
        });
  }
}
