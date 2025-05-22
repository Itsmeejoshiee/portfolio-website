import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget desktopView;
  const ResponsiveLayout({
    super.key,
    required this.mobileView,
    required this.desktopView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1060) {
          return mobileView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
