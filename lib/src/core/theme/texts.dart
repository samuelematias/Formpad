import 'package:Formpad/src/core/theme/colors.dart';
import 'package:Formpad/src/core/theme/fonts.dart';
import 'package:flutter/material.dart';

extension TextStyles on Text {
  Text h1() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.black,
          fontWeight: FontWeight.w600,
          fontSize: 50.0,
          fontFamily: merriweather,
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
          color: ColorTheme.black,
          fontWeight: FontWeight.w600,
          fontSize: 35.0,
          fontFamily: merriweather,
        ),
      );
    }
    return null;
  }

  Text h3() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.black,
          fontWeight: FontWeight.w400,
          fontSize: 24.0,
          fontFamily: openSans,
        ),
        textAlign: TextAlign.center,
      );
    }
    return null;
  }

  Text h4() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.black,
          fontWeight: FontWeight.w400,
          fontSize: 20.0,
          fontFamily: openSans,
        ),
        textAlign: TextAlign.center,
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
          color: ColorTheme.black,
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          fontFamily: openSans,
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
          fontFamily: openSans,
          color: ColorTheme.white,
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

  Text m1() {
    if (this is Text) {
      final Text t = this;
      return Text(
        t.data,
        style: TextStyle(
          color: ColorTheme.white,
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
          fontFamily: openSans,
        ),
        textAlign: TextAlign.center,
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
          color: ColorTheme.red,
          fontSize: 14,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w800,
        ),
      );
    }
    return null;
  }
}
