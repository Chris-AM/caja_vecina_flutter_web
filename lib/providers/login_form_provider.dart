import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool _obscureText = true;
  bool get obscureText => _obscureText;

  validateForm() {
    if (formKey.currentState!.validate()) {
      print('Valid Form entering...');
    } else {
      print('Invalid Form, check');
    }
  }

  updateObscureText() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
