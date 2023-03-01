import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function onPressed;
  final bool isSelected;

  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      clipBehavior: Clip.hardEdge,
      color: _isHovering
          ? Colors.white.withOpacity(0.1)
          : widget.isSelected
              ? Colors.white.withOpacity(0.2)
              : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isSelected ? null : widget.onPressed(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: MouseRegion(
              onEnter: (_) => setState(() => _isHovering = true),
              onExit: (_) => setState(() => _isHovering = false),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
