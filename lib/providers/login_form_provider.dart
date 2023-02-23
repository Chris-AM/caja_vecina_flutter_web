import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool _obscureText = true;
  bool get obscureText => _obscureText;

  validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  updateObscureText() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
