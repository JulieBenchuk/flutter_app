import 'package:flutter/material.dart';

void main() {
  runApp(Align(
    alignment: FractionalOffset(0.7, 0.5),
    child: Text(
      "Some words",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 40),
    )
  ));
}
