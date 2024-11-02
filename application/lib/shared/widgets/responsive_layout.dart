import 'package:flutter/material.dart';

/// The minimum width at which the screen size is considered 'desktop'.
const desktopWidth = 1140.0;

/// The minimum width at which the screen size is considered 'tablet'.
const tabletWidth = 650.0;

/// The ResponsiveLayout widget handles showing the correct widget based on
/// screen sizes.
///
/// Similar to UI libraries like TailwindCSS it chooses the layout on width.
class ResponsiveLayout extends StatelessWidget {
  /// The [Widget] shown when the screen size is mobile, this is the default child.
  final Widget mobile;

  /// The [Widget] shown if the screen size is at least tablet sized.
  final Widget? tablet;

  /// The [Widget] shown if the screen size is at least desktop sized.
  final Widget? desktop;

  /// Initializes a [ResponsiveLayout] with [mobile], [tablet] and [desktop].
  const ResponsiveLayout(
      {super.key, required this.mobile, this.tablet, this.desktop});

  @override
  Widget build(BuildContext context) {
    final desktop = this.desktop;
    final tablet = this.tablet;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= desktopWidth && desktop != null) {
          return desktop;
        } else if (constraints.maxWidth >= tabletWidth && tablet != null) {
          return tablet;
        }

        return mobile;
      },
    );
  }
}
