import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'About.dart';
import 'Workouts.dart';
import 'heroview.dart';
import 'login_page.dart';
class Home extends StatelessWidget {
  final controller = PageController(
    initialPage: 1
  );
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: herohome()
      //herohome()
      
    );
  }
}



