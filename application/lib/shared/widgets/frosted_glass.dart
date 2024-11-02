import 'dart:ui';

import 'package:flutter/material.dart';

/// Applies a frosted glass effect over the [Widget].
class FrostedGlass extends StatelessWidget {
  final double blur;
  final Widget child;

  const FrostedGlass({
    super.key,
    required this.child,
    this.blur = 10,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
      child: child,
    );
  }
}
