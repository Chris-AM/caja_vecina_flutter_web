import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';

class CollapsedButton extends StatelessWidget {
  final Function onPressed;
  final double sidebarWidth;

  const CollapsedButton({
    super.key,
    required this.onPressed, required this.sidebarWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Visibility(
          visible: sidebarWidth != 50,
          child: const Text(
            'Colapsar menú',
            style: TextStyle(
              color: AppTheme.secondaryColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            print('on pressed pressed');
            onPressed();
          },
          icon: const Icon(
            Icons.transit_enterexit_sharp,
            color: Colors.white,
          ),
          color: Colors.white,
        ),
      ],
    );
  }
}
