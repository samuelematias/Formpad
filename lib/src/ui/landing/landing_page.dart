import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/core/util/responsive_layout.dart';
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
              child: Padding(
                padding: EdgeInsets.all(48.0),
                child: SizedBox(
                  height: 50.0,
                  child: SocialMedia(),
                ),
              ),
            ),
            Body(),
          ],
        ),
        smallChild: SmallBody(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Expanded(
        //   flex: 1,
        //   child: Image.asset(
        //     "background-image.jpg",
        //     fit: BoxFit.fill,
        //   ),
        // ),
        // SizedBox(width: 60.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Carica store new product",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    fontFamily: openSans),
              ),
              const SizedBox(height: 20.0),
              Text(
                "Interior Design",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 50.0,
                    fontFamily: merriweather),
              ),
              const SizedBox(height: 14.0),
              Text(
                "Recliner lad, eu mollis diam, vitae gravida mauris. Cras mollis malesuada sem vitae venenatis. Morbi at erat eget nulla placerat egestas ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                    fontFamily: openSans),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20.0),
              FlatButton(
                onPressed: () {},
                color: Color(0xFFCFE8E4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:
                      Text("Read More", style: TextStyle(fontFamily: openSans)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}

class SmallBody extends StatelessWidget {
  const SmallBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minHeight: constraints.maxHeight,
              maxHeight: double.infinity,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  // Expanded(
                  //   flex: 3,
                  //   child: Image.asset(
                  //     "background-image.jpg",
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  //  SizedBox(height: 60.0),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 40.0),
                          Text(
                            "Carica store new product",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                fontFamily: openSans),
                          ),
                          Text(
                            "Interior Design",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 35.0,
                                fontFamily: merriweather),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            "Recliner lad, eu mollis diam, vitae gravida mauris. Cras mollis malesuada sem vitae venenatis. Morbi at erat eget nulla placerat egestas ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0,
                                fontFamily: openSans),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20.0),
                          FlatButton(
                            onPressed: () {},
                            color: Color(0xFFCFE8E4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Read More",
                                  style: TextStyle(fontFamily: openSans)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        color: Color(0XFFFBEFD9),
                        padding: EdgeInsets.all(12.0),
                        child: SocialMedia(
                          size: MainAxisSize.max,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
