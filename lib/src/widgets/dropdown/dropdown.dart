library dropdown;

import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  final TextEditingController controller;
  final List<String> items;
  final TextFormField field;
  const Dropdown({
    @required this.controller,
    @required this.items,
    @required this.field,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: field,
        ),
        PopupMenuButton<String>(
          icon: const Icon(Icons.arrow_drop_down),
          onSelected: (String value) {
            controller.text = value;
          },
          itemBuilder: (BuildContext context) {
            return items.map<PopupMenuItem<String>>((String value) {
              return PopupMenuItem(child: Text(value), value: value);
            }).toList();
          },
        ),
      ],
    );
  }
}
