import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class Beta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Banner(
      message: 'BETA',
      location: BannerLocation.topEnd,
      color: ColorTheme.green,
    );
  }
}
