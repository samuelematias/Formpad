import 'package:Formpad/src/core/util/responsive_layout.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveLayout(
        largeChild: Stack(
          children: [
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
            Positioned(
              right: 0.0,
              child: Beta(),
            ),
            BodyLarge(),
          ],
        ),
        smallChild: BodySmall(),
      ),
    );
  }
}
