import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mockup_caja_vecina/configs/configs.dart';
import 'package:provider/provider.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/router/router.dart';
import 'package:mockup_caja_vecina/services/services.dart';
import 'package:mockup_caja_vecina/ui/layouts/layouts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() async {
  await LocalStorage.configurePreferences();
  Flurorouter.configureRoutes();
  AppApi.dioConfig();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
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
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const [Locale('en'), Locale('es')],
      debugShowCheckedModeBanner: false,
      title: 'Maqueta Caja Vecina',
      initialRoute: Flurorouter.loginRoute,
      onGenerateRoute: Flurorouter.router.generator,
      scaffoldMessengerKey: NotificationService.messengerKey,
      navigatorKey: NavigatorService.navigatorKey,
      builder: (_, child) {
        final authProvider = Provider.of<AuthProvider>(context);
        return Overlay(
          clipBehavior: Clip.none,
          initialEntries: [
            OverlayEntry(
              builder: (_) {
                return ResponsiveWrapper.builder(
                  //? verify if the user is authenticated
                  authProvider.authStatus == AuthStatus.checking
                      ? const SplashLayout()
                      : authProvider.authStatus == AuthStatus.unauthenticated
                          ? AuthLayout(child: child!)
                          : DashboardLayout(child: child!),
                  //? Rendering settings
                  defaultScale: true,
                  breakpoints: [
                    const ResponsiveBreakpoint.resize(480, name: MOBILE),
                    const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                  ],
                );
              },
            ),
          ],
        );
      },
    );
  }
}
