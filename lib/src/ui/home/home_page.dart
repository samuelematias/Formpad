import 'package:Formpad/src/core/constants/assets/assets.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/core/util/ui_helper.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(context),
      backgroundColor: ColorTheme.black,
      body: Builder(
        builder: (context) => Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage(formpadLogo),
                    alignment: Alignment.center,
                  ),
                ).paddingSymmetric(vertical: Space.geraldine),
                if (isLarge(context))
                  HeaderLarge()
                else
                  HeaderSmall(() {
                    toggleDrawer(context);
                  }),
                if (isLarge(context)) MenuLarge()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _drawer(BuildContext context) {
    if (!isLarge(context)) {
      return Drawer(
        child: MenuSmall(),
      );
    } else {
      return null;
    }
  }
}
