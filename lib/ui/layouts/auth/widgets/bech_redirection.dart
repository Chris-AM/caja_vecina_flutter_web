import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';

class BechRedirection extends StatelessWidget {
  const BechRedirection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewSize = size.width / 3;

    return Container(
      decoration: _customDecoration(),
      width: viewSize,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(GlobalMessages.bechOption),
          Text(GlobalMessages.bechDisclaimer),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('logo_banco.png'),
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  GlobalMessages.bechRedirection,
                  style: const TextStyle(color: AppTheme.linksColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration _customDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      color: AppTheme.loginBackground,
    );
  }
}
