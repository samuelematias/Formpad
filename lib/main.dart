import 'package:Formpad/src/core/routes/router.dart';
import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/ui/landing/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: proximaNova),
      home: LandingPage(),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
