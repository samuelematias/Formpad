import 'package:Formpad/src/core/constants/assets/assets.dart';
import 'package:Formpad/src/core/data/menu/menu_item.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class MenuLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage(formpadLogo),
              alignment: Alignment.center,
            ),
          ).paddingSymmetric(vertical: Space.geraldine),
          for (MenuItem item in MenuItem.all()) _menuItem(item)
        ],
      ),
    ).paddingSymmetric(
      vertical: 10,
      horizontal: MediaQuery.of(context).size.width * 0.11,
    );
  }

  Widget _menuItem(MenuItem menuItem) {
    if (menuItem.isSpecialItem) {
      return _specialMenuItem(menuItem);
    } else {
      return _normalMenuItem(menuItem);
    }
  }

  Widget _specialMenuItem(MenuItem menuItem) => OutlineButton(
        child: Text(
          menuItem.name,
        ).b1(),
        onPressed: () {},
        borderSide: BorderSide(color: ColorTheme.white, width: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ).paddingSymmetric(horizontal: Space.conifer);

  Widget _normalMenuItem(MenuItem menuItem) => Text(
        menuItem.name,
      ).n1();
}
