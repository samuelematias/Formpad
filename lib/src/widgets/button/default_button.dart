import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final bool active;
  final bool loading;
  const DefaultButton({
    @required this.label,
    this.onPressed,
    this.active = true,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: active && !loading ? onPressed : null,
      color: ColorTheme.green,
      child: Container(
        child: loading ? CustomProgressIndicator() : Text(label).b1(),
      ).paddingAll(Space.dodger_blue),
    );
  }
}
