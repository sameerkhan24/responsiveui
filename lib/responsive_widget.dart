
import 'package:flutter/material.dart';
import 'size_config.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget portraitLayout;
  final Widget landscapeLayout;

  // ignore: use_key_in_widget_constructors
  const ResponsiveWidget({
    required this.portraitLayout,
     required this.landscapeLayout,
  });

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.isPortrait && SizeConfig.isMobilePortrait) {
      return portraitLayout;
    } else {
      return landscapeLayout ?? portraitLayout;
    }
  }
}