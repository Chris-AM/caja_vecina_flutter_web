import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import '../ui/views/views.dart';

class AuthRouterHandler {
  static Handler login = Handler(handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.unauthenticated) {
      return const LoginView();
    } else {
      return const SummaryView();
    }
  }));
  static Handler register = Handler(handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.unauthenticated) {
      return const RegisterView();
    } else {
      return const SummaryView();
    }
  }));
  static Handler bech = Handler(handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.unauthenticated) {
      return const BechView();
    } else {
      return const SummaryView();
    }
  }));
}
