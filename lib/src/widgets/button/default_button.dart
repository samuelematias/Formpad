import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: ColorTheme.green,
      child: Container(
        child: Text("Acessar o Form").b1(),
      ).paddingAll(Space.dodger_blue),
    );
  }
}
