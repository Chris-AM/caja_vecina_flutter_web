import 'package:flutter/material.dart';

class NavigatorService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future navigateToReplacement(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
