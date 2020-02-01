import 'package:Formpad/src/core/constants/assets/assets.dart';
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
                    flex: 5,
                    child: Container(
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
                            ).h4(),
                          ).paddingOnly(bottom: Space.fire_bush),
                          DefaultButton(),
                        ],
                      ),
                    ).paddingSymmetric(horizontal: Space.dodger_blue),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        color: ColorTheme.green,
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
