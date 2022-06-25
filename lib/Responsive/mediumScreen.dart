import 'package:flutter/material.dart';

class MediumResponsive extends StatelessWidget {
  late final Widget mediumBody;
late final Widget desktopBody;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mediumBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
