import 'package:flutter/material.dart';

extension Paddings on Widget {
  Widget paddingAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget paddingOnly({
    double bottom = 0.0,
    double left = 0.0,
    double right = 0.0,
    double top = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          bottom: bottom,
          left: left,
          right: right,
          top: top,
        ),
        child: this,
      );

  Widget paddingFromLTRB({
    double bottom = 0.0,
    double left = 0.0,
    double right = 0.0,
    double top = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );
}
