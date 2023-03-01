import 'package:flutter/material.dart';

class BechFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String rut = '';
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

    if (password == '') {
      _obscureText = true;
    }
    notifyListeners();
  }
}
