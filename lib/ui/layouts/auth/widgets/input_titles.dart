import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';

class InputTitles extends StatelessWidget {
  final String title;
  const InputTitles({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      alignment: Alignment.bottomLeft,
      child: Text(
        title,
        style: const TextStyle(color: AppTheme.fontColor),
      ),
    );
  }
}
