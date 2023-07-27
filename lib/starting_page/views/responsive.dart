import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopView;
  final Widget mobileView;

  const ResponsiveLayout(
      {super.key, required this.desktopView, required this.mobileView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1200) {
        return mobileView;
      } else {
        return desktopView;
      }
    });
  }
}
