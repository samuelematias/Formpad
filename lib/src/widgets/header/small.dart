import 'package:Formpad/src/core/constants/assets/assets.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class HeaderSmall extends StatelessWidget {
  final Function onPressed;

  HeaderSmall(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(Space.golden_dream),
        height: 55.0,
        child: IconButton(
          icon: Image(
            image: AssetImage(iconMenu),
            alignment: Alignment.center,
          ),
          onPressed: onPressed,
        ));
  }
}
