import 'package:Formpad/src/core/util/responsive_layout.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: ResponsiveLayout(
        largeChild: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: ColorTheme.green,
                child: SizedBox(
                  height: 50.0,
                  child: SocialMedia(),
                ),
              ).paddingAll(Space.conifer),
            ),
            _betaBanner(),
            BodyLarge(),
          ],
        ),
        smallChild: Stack(
          children: <Widget>[
            _betaBanner(),
            BodySmall(),
          ],
        ),
      ),
    );
  }

  Widget _betaBanner() {
    return Positioned(
      right: 0.0,
      child: Beta(),
    );
  }
}
