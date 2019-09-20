import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

class TopikKp extends StatefulWidget {
  @override
  _TopikKpState createState() => _TopikKpState();
}

class _TopikKpState extends State<TopikKp> {
  List<Container> daftardosen = new List();

  var list = [
    {"name": "Jaringan", "pic": "jr.png"},
    {"name": "Machine Learning", "pic": "ml.png"},
    {"name": "Web Development", "pic": "web.png"},
    {"name": "DataBase & Big Data", "pic": "db.png"},
    {"name": "Data Mining", "pic": "clusters.jpg"},
    {"name": "Multimedia", "pic": "mm.png"},
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
       appBar: AppBar(title: Text('Topik-Topik KP'),),
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
        BagIcon(
          name:  name,
        ),
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
                /*Text(
                  "$name\@gmail.com",
                  style: TextStyle(fontSize: 17.0, color: Colors.grey),
                ),*/
              ],
            ),
          ),
          /*Row(
            children: <Widget>[
              Icon(Icons.star, size: 30.0, color: Colors.red),
              Text(
                "Dosen",
                style: TextStyle(fontSize: 18.0),
              )
            ],
          )*/
        ],
      ),
    );
  }
}

class BagIcon extends StatelessWidget {
  BagIcon({this.name});
  final String name;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Text("Apa itu $name ?",style: TextStyle(fontSize: 24.0),)
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 50.0,
            color: Colors.green,
          ),
          Text(teks, style: new TextStyle(fontSize: 18.0, color: Colors.green))
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  final controller = PageController(
    initialPage: 1
  );
  @override
  
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Container(
        child: Card(
             child: Column(
            children: <Widget>[
              Text(
        "Jaringan komputer adalah sebuah sistem yang terdiri dari dua atau lebih komputer yang saling terhubung satu sama lain melalui media transmisi atau media komunikasi sehingga dapat saling berbagi data, aplikasi maupun berbagi perangkat keras komputer. Istilah jaringan komputer sendiri juga dapat diartikan sebagai kumpulan sejumlah terminal komunikasi yang terdiri dari dua komputer atau lebih yang saling terhubung. Tujuan dibangunnya jaringan komputer adalah agar informasi/ data yang dibawa pengirim (transmitter) dapat sampai kepada penerima (receiver) dengan tepat dan akurat. Jaringan komputer memungkinkan penggunanya dapat melakukan komunikasi satu sama lain dengan mudah. Selain itu, peran jaringan komputer sangat diperlukan untuk mengintegrasi data antar komputer-komputer client sehingga diperoleh suatu data yang relevan.",
        style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.justify,
      ),
        Text(""),
        Text(""),
        Text(""),
        Text(""),
        Text("Judul Topik KP Tentang Jaringan",style: TextStyle(fontSize: 18.0),
        textAlign: TextAlign.left,),
         Text(""),
        Text(""),
         Text("-  Topik mikrokomputer dan communication adapter",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-   Topik monitoring sensor node                                   ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-   Topik sensor placement                                             ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        Text("-   Topik cloud database untuk IoT                                 ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
          Text("- Topik field to cloud gateway                                        ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.left,),
        
            ],
          )
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child :Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry;s standard dummy text ever since the 1500s, when an unknown printer took a galelery of type and scrambled it to make a type specimen book. it has survived not only five centuries,but also the leap into electronic typesetting,remaining essentially uncharged it was popularised in the 1960s with the release Letraset sheets containg Lorem ipsum passages, and more recently with dekstop publisihng software like aldus,paagemaker Inculding versions of lorem ipsum",
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
        ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child :Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry;s standard dummy text ever since the 1500s, when an unknown printer took a galelery of type and scrambled it to make a type specimen book. it has survived not only five centuries,but also the leap into electronic typesetting,remaining essentially uncharged it was popularised in the 1960s with the release Letraset sheets containg Lorem ipsum passages, and more recently with dekstop publisihng software like aldus,paagemaker Inculding versions of lorem ipsum",
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
        ),
    );
  }
}
