import 'package:Formpad/src/core/util/responsive_layout.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   centerTitle: true,
      //   title: Text(
      //     "Furniture",
      //     style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 24.0,
      //         fontWeight: FontWeight.w800,
      //         fontStyle: FontStyle.italic),
      //   ),
      //   leading: Image.asset("icon/nav-icon.png"),
      //   actions: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 20.0),
      //       child: Icon(
      //         Icons.search,
      //         color: Colors.black,
      //       ),
      //     )
      //   ],
      // ),
      body: ResponsiveLayout(
        largeChild: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                child: SizedBox(
                  height: 50.0,
                  child: SocialMedia(),
                ),
              ).paddingAll(Space.conifer),
            ),
            BodyLarge(),
          ],
        ),
        smallChild: BodySmall(),
      ),
    );
  }
}
