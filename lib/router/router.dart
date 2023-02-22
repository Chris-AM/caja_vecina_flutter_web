import 'package:fluro/fluro.dart';

import 'auth_router_handler.dart';
import 'errors_handler.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //? Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';
  static String bechRoute = '/auth/bech';

  //? Caja Vecina
  static String summaryRoute = '/resumen';

  //? Errors
  static String notFoundRoute = '/404_not_found';

  static void configureRoutes(
  ) {
    //? Auth Configs
    router.define(
      rootRoute,
      handler: AuthRouterHandler.login,
      transitionType: TransitionType.none,
    );
    router.define(
      loginRoute,
      handler: AuthRouterHandler.login,
      transitionType: TransitionType.none,
    );
    router.define(
      registerRoute,
      handler: AuthRouterHandler.register,
      transitionType: TransitionType.none,
    );
    router.define(
      bechRoute,
      handler: AuthRouterHandler.bech,
      transitionType: TransitionType.none,
    );
    // ignore: todo
    //TODO
    // router.define(summaryRoute, handler: handler);
    //? Errors Config
    router.notFoundHandler = ErrorsHandlers.notFoundPage404;
  }
}
