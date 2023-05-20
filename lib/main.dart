import 'package:flutter/material.dart';

void main() {
  runApp(Padding(
      padding: EdgeInsets.all(40),
      child: Align(
          alignment: Alignment.topLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 250, height: 200),
            child: Text(
              "Some words bla bla bla bla kkkk!!!!",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 40),
            )
          ))));
}
