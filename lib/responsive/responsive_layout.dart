import 'package:flutter/material.dart';

//Encapsulation Layout
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  // ignore: use_key_in_widget_constructors
  const ResponsiveLayout({
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else if (constraints.maxWidth < 1023) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
