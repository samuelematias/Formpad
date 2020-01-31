import 'package:Formpad/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

extension TextStyles on Widget {
  Widget h1() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.white80,
          fontSize: 14,
        ),
      );

  Widget h2() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget p1() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.whiteCC,
          fontSize: 16,
        ),
      );

  Widget b1() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 15,
        ),
      );

  Widget n1() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget n2() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget u1() => Text(
        '$this',
        style: TextStyle(
          color: ColorTheme.accent,
          fontSize: 14,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w800,
        ),
      );
}
