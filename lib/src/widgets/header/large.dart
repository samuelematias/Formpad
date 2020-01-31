import 'package:Formpad/src/core/constants/assets/assets.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class HeaderLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(color: ColorTheme.blackTransparent40),
      child: Row(
        children: <Widget>[
          Text.rich(
            TextSpan(
              text: "Check out our blog: ",
              children: [
                TextSpan(
                  text:
                      "Building a New Business Branch on a Competitive Market – the Babbel Story",
                ).span2(),
              ],
            ).span1(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _socialMedia(iconGithub),
              ],
            ),
          ),
        ],
      ),
    ).paddingSymmetric(horizontal: MediaQuery.of(context).size.width * 0.1);
  }

  Widget _socialMedia(String icon) => Container(
        child: Image(
          image: AssetImage(icon),
          alignment: Alignment.center,
        ),
      ).paddingSymmetric(
        vertical: Space.golden_dream,
        horizontal: Space.spring_green,
      );
}
