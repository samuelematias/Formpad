import 'package:Formpad/src/core/constants/assets/assets.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BodyLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage(formpadLogoBlack),
                  alignment: Alignment.center,
                ),
              ).paddingSymmetric(vertical: Space.geraldine),
              Container(
                child: Text(
                  "A forma fácil de se trabalhar com Form :D",
                ).h3(),
              ).paddingOnly(bottom: Space.fire_bush),
              DefaultButton(
                label: "Acessar o Form",
                onPressed: () => Navigator.pushNamed(context, '/form'),
              ),
            ],
          ),
        ),
        // const SizedBox(width: 100.0),
      ],
    );
  }
}
