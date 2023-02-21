import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/app_theme.dart';

class LoginButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  const LoginButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = Colors.orange,
    this.isFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: AppTheme.rounded),
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            color: isFilled ? color : Colors.grey.withOpacity(0.4),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          isFilled ? color : Colors.grey.withOpacity(0.4),
        ),
      ),
      onPressed: () => onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: isFilled ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
