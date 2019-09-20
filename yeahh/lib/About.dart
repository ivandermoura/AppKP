import 'package:flutter/material.dart';
import 'package:yeahh/Home.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            child: Center(child: Text("Applikasi KP ini dibuat untuk memudahkan siswa untuk mengambil mata kuliah Kerja Praktek",style: TextStyle(fontSize: 14.0),),),
            onDoubleTap: (){
              Navigator.of(context).pop();
                Navigator.push(context,new MaterialPageRoute(
                  builder: (BuildContext context) =>Home()));
            },
          ),
        ],
      ),
      
    );
  }
}