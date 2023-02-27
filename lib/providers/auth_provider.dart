import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/services/services.dart'; 

class AuthProvider extends ChangeNotifier {
  String? _token;

  emailLogin(String email, String password) {
    print('emailLogin: $email, $password');
    _token = '1234567890';
    LocalStorage.preferences.setString('token', _token!);
    notifyListeners();
  }

  bechLogin(String rut, String password) {}
}
