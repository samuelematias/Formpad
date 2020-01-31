import 'package:flutter/material.dart';

bool isLarge(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

bool isSmall(BuildContext context) => MediaQuery.of(context).size.width < 500;

void toggleDrawer(BuildContext context) {
  final scaffold = Scaffold.of(context);
  if (scaffold.isDrawerOpen) {
    Navigator.of(context).pop();
  } else {
    scaffold.openDrawer();
  }
}
