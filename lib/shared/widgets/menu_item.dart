import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function onPressed;
  final double sidebarWidth;
  final bool isSelected;

  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.isSelected = false,
    required this.sidebarWidth,
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
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: MouseRegion(
              onEnter: (_) => setState(() => _isHovering = true),
              onExit: (_) => setState(() => _isHovering = false),
              child: Container(
                padding: EdgeInsets.only(
                  left: (widget.sidebarWidth == 250) ? 6 : 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      widget.icon,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Visibility(
                      visible: widget.sidebarWidth != 50,
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
