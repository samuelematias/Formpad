import 'package:Formpad/src/core/theme/theme.dart';
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
                child: Text(
                  "Carica store new product",
                ).p1(),
              ).paddingOnly(bottom: Space.fire_bush),
              // const SizedBox(height: 20.0),
              Container(
                child: Text(
                  "Interior Design",
                ).h1(),
              ).paddingOnly(bottom: Space.golden_dream),
              // const SizedBox(height: 14.0),
              Container(
                child: Text(
                  "Recliner lad, eu mollis diam, vitae gravida mauris. Cras mollis malesuada sem vitae venenatis. Morbi at erat eget nulla placerat egestas ",
                ).h3(),
              ).paddingOnly(bottom: Space.fire_bush),
              // const SizedBox(height: 20.0),
              FlatButton(
                onPressed: () {},
                color: ColorTheme.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  child: Text("Read More").b1(),
                ).paddingAll(Space.dodger_blue),
              ),
            ],
          ),
        ),
        // const SizedBox(width: 100.0),
      ],
    );
  }
}
