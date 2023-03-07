import 'package:flutter/material.dart';
import 'package:mockup_caja_vecina/shared/shared.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myIconOpen = SvgPicture.asset(
  'assets/left_panel_open_FILL0_wght400_GRAD0_opsz48.svg',
  width: 24,
  height: 24,
  color: Color.alphaBlend(Colors.transparent, Colors.white),
);

Widget myIconClose = SvgPicture.asset(
  'assets/left_panel_close_FILL0_wght400_GRAD0_opsz48.svg',
  width: 24,
  height: 24,
  color: Color.alphaBlend(Colors.transparent, Colors.white),
);

class CollapsedButton extends StatelessWidget {
  final Function onPressed;
  final double sidebarWidth;

  const CollapsedButton({
    super.key,
    required this.onPressed,
    required this.sidebarWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Visibility(
          visible: sidebarWidth != 50,
          child: const Text(
            'Contraer menú',
            style: TextStyle(
              color: AppTheme.secondaryColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            onPressed();
          },
          icon: sidebarWidth == 250 ? myIconClose : myIconOpen,
          color: Colors.white,
        ),
      ],
    );
  }
}
