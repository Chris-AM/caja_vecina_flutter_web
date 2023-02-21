import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/ui/buttons/link_text.dart';

import '../../shared/shared.dart';

class BechRedirectionView extends StatelessWidget {
  const BechRedirectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            LinkText(
              text: GlobalMessages.bechRedirection,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
