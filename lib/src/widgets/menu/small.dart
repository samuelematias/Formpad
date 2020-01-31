import 'package:Formpad/src/core/data/menu/menu_item.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class MenuSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          for (MenuItem item in MenuItem.all()) _menuItem(item)
        ],
      ),
    ).paddingSymmetric(vertical: Space.spring_green);
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
        ).n2(),
        onPressed: () {},
        borderSide: BorderSide(color: ColorTheme.black, width: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ).paddingSymmetric(horizontal: Space.golden_dream);

  Widget _normalMenuItem(MenuItem menuItem) => Text(
        menuItem.name,
      ).n2();
}
