import 'package:Formpad/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

extension TextStyles on Text {
  Text h1() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.white80,
          fontSize: 14,
        ),
      );
    }
    return null;
  }

  Text h2() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    return null;
  }

  Text p1() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.whiteCC,
          fontSize: 16,
        ),
      );
    }
    return null;
  }

  Text b1() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 15,
        ),
      );
    }
    return null;
  }

  Text n1() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    return null;
  }

  Text n2() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    return null;
  }
}

extension TextSpanStyles on TextSpan {
  TextSpan span1() {
    if (this is TextSpan) {
      final TextSpan t = this;
      return TextSpan(
        text: t.text,
        style: TextStyle(
          color: ColorTheme.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    return null;
  }

  TextSpan span2() {
    if (this is TextSpan) {
      final TextSpan t = this;
      return TextSpan(
        text: t.text,
        style: TextStyle(
          color: Colors.red,
          fontSize: 14,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w800,
        ),
      );
    }
    return null;
  }
}
