import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';

class User extends StatelessWidget {
  final String storeName;
  final String userName;
  final IconData storeIcon;
  final IconData userIcon;
  final double sidebarWidth;

  const User({
    super.key,
    required this.sidebarWidth,
    required this.storeName,
    required this.userName,
    required this.storeIcon,
    required this.userIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                storeIcon,
                color: Colors.white,
              ),
              color: Colors.white,
            ),
            Visibility(
              visible: sidebarWidth != 50,
              child: Column(
                children: [
                  Text(
                    storeName,
                    style: const TextStyle(
                      color: AppTheme.secondaryColor,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(
                          userIcon,
                        ),
                      ),
                      Text(
                        userName,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
