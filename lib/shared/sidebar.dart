import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';
import 'package:mockup_caja_vecina/shared/widgets/widgets.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  double sidebarWidth = 250;
  void _toggleSidebar() {
    setState(() {
      sidebarWidth = sidebarWidth == 250 ? 50 : 250;
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
          User(
            sidebarWidth: sidebarWidth,
            storeName: 'Nombre del negocio',
            userName: 'Nombre del usuario',
            storeIcon: Icons.store,
            userIcon: Icons.person_outline,
          ),
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
