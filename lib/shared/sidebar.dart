import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';
import 'package:mockup_caja_vecina/shared/widgets/widgets.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  double sidebarWidth = 200;
  void _toggleSidebar() {
    setState(() {
      sidebarWidth = sidebarWidth == 200 ? 50 : 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sidebarWidth,
      height: double.infinity,
      decoration: sidebarDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          //? Collapsible button
          const SizedBox(height: 20),
          CollapsedButton(
            onPressed: _toggleSidebar,
            sidebarWidth: sidebarWidth,
          ),
          const SizedBox(height: 20),
          //? Sidebar items
          
        ],
      ),
    );
  }

  BoxDecoration sidebarDecoration() => const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.thirdColor,
              AppTheme.fontColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: AppTheme.thirdColor,
              blurRadius: 10,
            )
          ]);
}
