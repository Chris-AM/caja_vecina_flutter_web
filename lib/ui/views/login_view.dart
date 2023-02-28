import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';
import 'package:mockup_caja_vecina/ui/layouts/auth/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //login form background
        Container(
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: AppTheme.loginBackgroundDecoration(),
          child: Column(
            children: const [
              CustomTitle(),
              SizedBox(height: 20),
              LoginForm(),
              SizedBox(height: 20),
              CreateAccountBox(),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Container(
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: AppTheme.loginBackgroundDecoration(),
          child: const BechRedirectionBox(),
        ),
      ],
    );
  }
}