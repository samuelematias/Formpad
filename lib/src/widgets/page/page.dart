library page;

import 'package:Formpad/src/core/data/page/page_link.dart';
import 'package:Formpad/src/core/theme/theme.dart';

import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final PageLink page;

  Page(this.page);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: Colors.red,
        backgroundBlendMode: BlendMode.overlay,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            page.title,
            textAlign: TextAlign.center,
          ).h1(),
          Container(
            child: Text(
              page.subtitle,
              textAlign: TextAlign.center,
            ).h2(),
          ).paddingOnly(top: Space.conifer),
          Container(
            child: Text(
              page.description,
              textAlign: TextAlign.center,
            ).p1(),
          ).paddingSymmetric(vertical: Space.conifer),
          RaisedButton(
            child: Text(
              page.button,
            ).b1(),
            onPressed: () {},
            color: ColorTheme.accent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ).paddingSymmetric(
              vertical: Space.golden_dream, horizontal: Space.conifer)
        ],
      ),
    ).paddingSymmetric(horizontal: Space.golden_dream);
  }
}
