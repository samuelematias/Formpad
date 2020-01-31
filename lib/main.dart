import 'package:Formpad/src/core/theme/theme.dart';
import 'package:Formpad/src/ui/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: proximaNova),
      home: HomePage(),
    );
  }
}