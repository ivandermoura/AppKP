import 'package:flutter/material.dart';
import 'login_page.dart';
import 'mainChat.dart';
class herohome extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _herohomeState createState() => _herohomeState();
}

class _herohomeState extends State<herohome> {
  List<Container> daftardosen = new List();

  var list = [
    {"name": "Dr. Bernard R. Suteja, S.Kom., M.Kom.", "pic": "bernard.jpg"},
    {"name": "Andreas Widjaja, PhD", "pic": "Andreas.jpg"},
    {"name": "Wenny Franciska S., S.Kom, M.T.", "pic": "Wenny.jpg"},
    {"name": "Dr. Hapnes Toba, M. Sc., IPM", "pic": "toba.jpg"},
    {"name": "Dr. Ir. Mewati Ayub, M.T.", "pic": "Mewati.jpg"},
    {"name": "Ir. Teddy Marcus Zakaria, MT.", "pic": "Teddy.jpg"},
    {"name": "Robby Tan, S.T., M. Kom.", "pic": "Robby.jpg"},
    {"name": "Radiant Victor Imbar, S.Kom, M.T.", "pic": "Radiant.jpg"},
  ];

  _buildlist() async {
    for (var i = 0; i < list.length; i++) {
      final dosenlist = list[i];
      final String gambar = dosenlist["pic"];

      daftardosen.add(new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: dosenlist["name"],
                child: new Material(
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Deskripsi(
                                name: dosenlist["name"],
                                pic: gambar,
                              ),
                        )),
                    child: Container(
                      width: 105,
                      child: new Image.asset(
                        "img/$gambar",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Text(
                dosenlist["name"],
                style: new TextStyle(fontSize: 12.0),
              )
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _buildlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftardosen,
      ),
    );
  }
}

class Deskripsi extends StatelessWidget {
  Deskripsi({this.name, this.pic});
  final String name;
  final String pic;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Kerja Praktek'),
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
                height: 240.0,
                child: Hero(
                  tag: name,
                  child: new Material(
                    child: new InkWell(
                      child: new Image.asset(
                        "img/$pic",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
            Bagnama(
              name: name,
            ),
            BagIcon(),
            Keterangan()
          ],
        ));
  }
}

class Bagnama extends StatelessWidget {
  Bagnama({this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BagIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          GestureDetector(
            child: Iconteks(
            icon: Icons.message,
            teks: "Message",
          ),
             onTap: () {
           Navigator.of(context).pop();
                Navigator.push(context,new MaterialPageRoute(
                  builder: (BuildContext context) =>MyApp())
                
                );
         
        },
          )
          
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 140.0),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 25.0,
            color: Colors.green,
          ),
          Text(teks, style: new TextStyle(fontSize: 18.0, color: Colors.green))
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
          child: Column(
            children: <Widget>[
              Text(
        "Memiliki bidang minat penelitian pada teknologi internet, web semantik, web of things (WOT) berbasis Arduino, personalisasi pembelajaran daring (Online Learning), kecerdasan buatan, dan pembelajaran mesin. Beberapa buku dan karya tulis ilmiah telah dihasilkan sebagai sumbangsih pada  informatika ilmu komputer yang terus berkembang.",
        style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.justify,
      ),
        Text(""),
        Text(""),
        Text(""),
        Text(""),
        Text("Keahlian",style: TextStyle(fontSize: 18.0),
        textAlign: TextAlign.left,),
         Text(""),
        Text(""),
         Text("-  HTML, CSS, Javascript, DHTML",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-   AJAX, Web Service                      ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-   OOP-PHP, MVC-PHP                   ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-  JAVA, JSP, JENA, RDF, SPARQL",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
          Text("-  DBMS: SQL, DDL, DML, TSQL      ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-  Pembelajaran Online                    ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-  Ontology, Reasoning                    ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-  WOT berbasis Arduino                   ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
            ],
          )
          ),
    );
  }
}
