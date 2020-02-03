library social_media;

import 'package:Formpad/src/core/theme/colors.dart';
import 'package:Formpad/src/core/util/browser/browser.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key key,
    this.size = MainAxisSize.min,
  }) : super(key: key);
  final MainAxisSize size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: size,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50,
          child: FlatButton(
            onPressed: () => ExternalBrowser.open(
              context: context,
              url: "https://github.com/samuelematias/Formpad",
            ),
            color: ColorTheme.green,
            child: Icon(
              AntDesign.github,
              color: ColorTheme.white,
              size: 16,
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: FlatButton(
            onPressed: () => ExternalBrowser.open(
              context: context,
              url: "https://twitter.com/samuelematias",
            ),
            color: ColorTheme.green,
            child: Icon(
              AntDesign.twitter,
              color: ColorTheme.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
