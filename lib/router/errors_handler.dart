import 'package:fluro/fluro.dart';
import 'package:mockup_caja_vecina/ui/views/views.dart';

class ErrorsHandlers {
  static Handler notFoundPage404 = Handler(handlerFunc: (context, parameters) {
    return const NotFoundView();
  });
}
