import 'package:fluro/fluro.dart';
import '../ui/views/views.dart';

class AuthRouterHandler {
  static Handler login = Handler(handlerFunc: ((context, parameters) {
    return LoginView();
  }));
  static Handler register = Handler(handlerFunc: ((context, parameters) {
    return const RegisterView();
  }));
  static Handler bech = Handler(handlerFunc: ((context, parameters) {
    return const BechView();
  }));
}
