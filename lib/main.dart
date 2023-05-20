import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      color: Colors.pink,
      padding: EdgeInsets.all(50),
      child: Column(
        children: <Widget> [
          Expanded(child: Container(color: Colors.lightBlue,), flex: 1,),
          Expanded(child: Container(color: Colors.green,), flex: 4),
          Expanded(child: Container(color: Colors.yellow,), flex: 5),
        ],
      )));
}
