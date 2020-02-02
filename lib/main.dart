import 'package:Formpad/src/core/routes/router.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/ui/home/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Formpad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: proximaNova),
      home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
