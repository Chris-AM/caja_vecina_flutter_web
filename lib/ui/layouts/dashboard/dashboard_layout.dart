import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Row(
          children: [
            //? Sidebar bigger screens
            const Sidebar(),
            //? Dynamic views
            Expanded(
              child: Container(
                decoration: AppTheme.backgroundImage(),
                child: child,
              ),
            )
          ],
        ));
  }
}
