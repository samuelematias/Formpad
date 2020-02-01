import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BodySmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minHeight: constraints.maxHeight,
              maxHeight: double.infinity,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Carica store new product",
                            ).p1(),
                          ).paddingOnly(top: Space.portage),
                          Container(
                            child: Text(
                              "Interior Design",
                            ).h2(),
                          ).paddingOnly(bottom: 10.0),
                          Container(
                            child: Text(
                              "Recliner lad, eu mollis diam, vitae gravida mauris. Cras mollis malesuada sem vitae venenatis. Morbi at erat eget nulla placerat egestas ",
                            ).h4(),
                          ).paddingOnly(bottom: Space.fire_bush),
                          FlatButton(
                            onPressed: () {},
                            color: ColorTheme.lightBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              child: Text(
                                "Read More",
                              ).b1(),
                            ).paddingAll(Space.spring_green),
                          ),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: Space.dodger_blue),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        color: ColorTheme.beige,
                        padding: EdgeInsets.all(12.0),
                        child: SocialMedia(
                          size: MainAxisSize.max,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
