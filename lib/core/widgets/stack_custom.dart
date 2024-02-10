import 'package:flutter/material.dart';

import 'flip_direction.dart';

class StackCustom extends StatelessWidget {
  final List<Widget> children;
  final bool flip;
  const StackCustom({required this.children, this.flip = true, super.key});

  @override
  Widget build(BuildContext context) {
    return flip
        ? FlipDirection(
            child: Stack(
              children: children,
            ),
          )
        : Stack(
            children: children,
          );
  }
}
