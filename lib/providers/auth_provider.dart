import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/configs/configs.dart';
import 'package:mockup_caja_vecina/models/models.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';
import 'package:mockup_caja_vecina/router/router.dart';
import 'package:mockup_caja_vecina/services/services.dart';

class AuthProvider extends ChangeNotifier {
  //? variables
  AuthStatus _authStatus = AuthStatus.checking;
  bool _isValidDialog = false;
  String? _userLoginError;
  User? _user;

  //? getters
  AuthStatus get authStatus => _authStatus;
  bool get isValidDialog => _isValidDialog;
  String? get userLoginError => _userLoginError;
  User? get user => _user;

  //? setters
  set authStatus(AuthStatus value) {
    _authStatus = value;
    notifyListeners();
  }

  set isValidDialog(bool value) {
    _isValidDialog = value;
    notifyListeners();
  }

  set authLoginError(String? value) {
    _userLoginError = value;
    notifyListeners();
  }

  set user(User? value) {
    _user = value;
    notifyListeners();
  }

  //? constructor
  AuthProvider() {
    isAuthenticated();
  }

  //? methods

  void logout() {
    LocalStorage.preferences.remove(LocalStorage.tokenKey);
    authStatus = AuthStatus.unauthenticated;
    NavigatorService.navigateToReplacement(Flurorouter.loginRoute);
  }

  Future<bool> isAuthenticated() async {
    final String? token =
        LocalStorage.preferences.getString(LocalStorage.tokenKey);
    if (token == null) {
      authStatus = AuthStatus.unauthenticated;
      notifyListeners();
      return false;
    }

    try {
      final response = await AppApi.httpGet('/auth');
      final authResponse = AuthResponse.fromMap(response);
      LocalStorage.preferences.setString(
        LocalStorage.tokenKey,
        authResponse.token,
      );

      _user = authResponse.user;
      authStatus = AuthStatus.authenticated;
      return true;
    } catch (e) {
      print('isAuthenticated error: $e');
      if (e.toString().contains('Invalid token')) {
        authStatus = AuthStatus.unauthenticated;
      } else if (e.toString().contains('jwt expired')) {
        // ignore: avoid_print
        print('Token expirado');
        logout();
        authStatus = AuthStatus.unauthenticated;
      }
      return false;
    }
  }

  emailLogin(
    String email,
    String password,
  ) {
    final data = {
      'email': email,
      'password': password,
    };
    AppApi.httpPost('/auth/login', data).then((json) {
      final authResponse = AuthResponse.fromMap(json);
      _user = authResponse.user;
      print('email login user: $_user');
      final token = authResponse.token;
      print('email login token: $token');
      authStatus = AuthStatus.authenticated;
      LocalStorage.preferences.setString(
        LocalStorage.tokenKey,
        token,
      );
      NavigatorService.navigateToReplacement(Flurorouter.summaryRoute);
      AppApi.dioConfig();
    }).catchError((error) {
      print('error in catch: $error');
    });
  }

  bechLogin(String rut, String password) {}
}
