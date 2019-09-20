import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

class Topik extends StatefulWidget {
  @override
  _TopikState createState() => _TopikState();
}

class _TopikState extends State<Topik> {
  TextEditingController controllerTopik = new TextEditingController();

  void kirimdata() {
    AlertDialog alertDialogg = AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                new Text("Topik KP : " "${controllerTopik.text}"),
              ],
            ),
            new Row(
              children: <Widget>[
                new RaisedButton(
                  child: new Text(
                    "OK",
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialogg);
  }

  @override
  Widget build(BuildContext ctx) {
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerTopik,
              maxLines: 5,
              decoration: new InputDecoration(
                  hintText: "Judul TOPIK",
                  labelText: "Judul TOPIK",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new RaisedButton(
              child: new Text("Ajukan"),
              onPressed: () {
                kirimdata();
              
              },
            )
          ],
        ),
      ),
    );
  }
}
