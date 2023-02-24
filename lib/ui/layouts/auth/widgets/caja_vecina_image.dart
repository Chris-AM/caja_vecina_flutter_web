import 'package:flutter/material.dart';

class CajaVecinaImage extends StatelessWidget {
  const CajaVecinaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 40, 20, 25),
          child: Image(
            image: AssetImage('caja-vecina.png'),
          ),
        ),
      ),
    );
  }
}
