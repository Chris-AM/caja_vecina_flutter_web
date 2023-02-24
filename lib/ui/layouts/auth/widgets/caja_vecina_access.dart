import 'package:flutter/material.dart';

class CajaVecinaAccess extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  const CajaVecinaAccess({
    super.key,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      //? View Container
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: height),
        child: SizedBox(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * .8,
                width: width,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
