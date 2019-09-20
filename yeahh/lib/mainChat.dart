import 'package:flutter/material.dart';
import 'homeChat.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Chat App",
      home: new HomePage(),
      theme: ThemeData(primaryColor: Colors.green),
    );
  }
}
