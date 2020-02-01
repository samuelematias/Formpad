import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar({
    Key key,
    @required BuildContext context,
    @required String title,
    Color bottomLineColor = ColorTheme.white,
    bool showHeaderLeft = true,
    Function onClickBackButton,
    bool showHeaderRight = false,
    Function onClickHeaderRight,
    String headerRightLabel = '',
  }) : super(
          key: key,
          title: Text(title).p1(),
          leading: showHeaderLeft
              ? GestureDetector(
                  onTap: () {
                    onClickBackButton != null
                        ? onClickBackButton()
                        : Navigator.pop(context);
                  },
                  child: Container(
                    color: ColorTheme.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Space.golden_dream,
                      ),
                      child: Icon(
                        AntDesign.arrowleft,
                        color: ColorTheme.green,
                      ),
                    ),
                  ),
                )
              : null,
          centerTitle: true,
          brightness: Brightness.light,
          backgroundColor: ColorTheme.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Container(
              color: bottomLineColor,
              height: 2.0,
              alignment: Alignment.center,
            ),
          ),
        );
}
