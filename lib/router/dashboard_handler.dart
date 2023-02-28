import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/ui/views/views.dart';

class DashboardHandler {
  static Handler summary = Handler(handlerFunc: (context, params) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.authenticated) {
      return const SummaryView();
    } else {
      return const LoginView();
    }
  });
}
