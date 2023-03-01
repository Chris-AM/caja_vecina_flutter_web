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
          //? Menu items
          //? Quick Summary
          MenuItem(
            sidebarWidth: sidebarWidth,
            title: 'Resumen rápido',
            icon: Icons.flash_on_outlined,
            onPressed: () {},
          ),
          //? Sales
          MenuItem(
            sidebarWidth: sidebarWidth,
            title: 'Ventas',
            icon: Icons.shopping_bag_outlined,
            onPressed: () {},
          ),
          //? Payments
          MenuItem(
            sidebarWidth: sidebarWidth,
            title: 'Abonos',
            icon: Icons.attach_money_outlined,
            onPressed: () {},
          ),
          //? Settings
          MenuItem(
            sidebarWidth: sidebarWidth,
            title: 'Configuración',
            icon: Icons.settings_outlined,
            onPressed: () {},
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
