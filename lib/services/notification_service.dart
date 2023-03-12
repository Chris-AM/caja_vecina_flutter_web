import 'package:flutter/material.dart';

class NotificationService {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void showSnackbarMessage({required String message}) =>
      messengerKey.currentState!.showSnackBar(SnackBar(
        content: Text(message),
      ));
}
