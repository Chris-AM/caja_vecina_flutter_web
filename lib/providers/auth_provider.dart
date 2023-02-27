import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/services/services.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;
  AuthStatus authStatus = AuthStatus.checking;

  AuthProvider() {
    isAuthenticated();
  }

  emailLogin(String email, String password) {
    _token = '1234567890';
    LocalStorage.preferences.setString('token', _token!);
    authStatus = AuthStatus.authenticated;
    notifyListeners();
  }

  bechLogin(String rut, String password) {}

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.preferences.getString('token');
    if (token == null) {
      authStatus = AuthStatus.unauthenticated;
      notifyListeners();
      return false;
    }
    //!TODO check token in backend

    await Future.delayed(const Duration(seconds: 1));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }
}
