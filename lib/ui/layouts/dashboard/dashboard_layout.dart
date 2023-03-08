import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //? Sidebar bigger screens
          const Sidebar(),
          Expanded(
            child: Container(
              decoration: AppTheme.backgroundImage(),
              child: Column(
                children: [
                  const Breadcrumb(),
                  //? Dynamic views
                  Expanded(
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
