import 'package:Formpad/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends SizedBox {
  CustomProgressIndicator({
    double width = 30.0,
    double height = 30.0,
    double strokeWidth = 2.0,
    Color bg = ColorTheme.white,
  }) : super(
          child: CircularProgressIndicator(
            backgroundColor: bg,
            valueColor: AlwaysStoppedAnimation<Color>(ColorTheme.green),
            strokeWidth: strokeWidth,
          ),
          width: width,
          height: height,
        );
}
