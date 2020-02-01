library social_media;

import 'package:Formpad/src/core/constants/assets/assets.dart';
import 'package:Formpad/src/core/theme/colors.dart';
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
            onPressed: () {},
            color: ColorTheme.green,
            child: Image(
              image: AssetImage(iconGithub),
              alignment: Alignment.center,
              height: 15.0,
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: FlatButton(
            onPressed: () {},
            color: ColorTheme.green,
            child: Image(
              image: AssetImage(iconTwitter),
              alignment: Alignment.center,
              height: 15.0,
            ),
          ),
        ),
      ],
    );
  }
}
