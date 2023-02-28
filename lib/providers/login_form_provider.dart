import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/providers/providers.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool _obscureText = true;
  bool get obscureText => _obscureText;
  String get passwordText => password;

  bool validateForm() {
    return formKey.currentState!.validate() ? true : false;
  }

  updateObscureText() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
