import 'package:flutter/material.dart';

class Pengumuman extends StatefulWidget {
  @override
  _PengumumanState createState() => _PengumumanState();
}

class _PengumumanState extends State<Pengumuman> {
  @override
  
    List<Container> daftardosen = new List();

  var list = [
    {"name": "Pengumpulan Laporan KP Berbentuk CD", "pic": "2.png","ket": "Pengumpulan Laporan KP berbentuk CD dikumpulkan paling Lambat tanggal 28 April 2019 harap Dikumpulkan di perpusatakaan pada saat jam operasional perpustakaan..... selengkapnya"},
    {"name": "Pengajuan Sidang KP ", "pic": "1.png","ket": "Untuk seluruh mahasiswa yang mengambil mata kuliah KP diharapkan untuk mengisi form sidang KP yang sudah diberitahukan oleh koordinator KP..... selengkapnya "},
    {"name": "Batch Pengumpulan Topik KP", "pic": "3.png","ket": "Pengumpulan Laporan Topik KP akan dilakukan 2 batch. batch 1 dilakukan minggu sebelum uts, Batch 2 dilakukan minggu sebelum Uas ......selengkapnya"},
    {"name": "Jadwal Sidang KP", "pic": "4.png","ket": "Jadwal sidang KP akan dilaksanakan sesuai dengan yang sudah ditentukan masing masing oleh dosen penguji dari mahasiswa. Mahasiswa diharapkan ....selengkapnya"},
    
    
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
                  color: Colors.white,
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Deskripsi(
                                name: dosenlist["name"],
                                pic: gambar,
                              ),
                        )),
                    child: Container(
                      width: 325,
                      height: 205,
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
                style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
               new Text(
                 
                dosenlist["ket"],
                style: new TextStyle(fontSize: 14.0),
                textAlign: TextAlign.justify,
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
      appBar: AppBar(title: Text("Berita KP"),),
      body: new GridView.count(
        crossAxisCount: 1,
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
            //BagIcon(),
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
                  style: TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
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
        "Pengumpulan Laporan KP berbentuk CD dikumpulkan paling Lambat tanggal 28 April 2019 harap Dikumpulkan di perpusatakaan pada saat jam operasional perpustakaan",
        style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.justify,
      ),
        Text(""),
        Text(""),
        Text(""),
        Text(""),
        Text("Syarat - Syarat Kelengkapan pengumuman",style: TextStyle(fontSize: 18.0,),
        textAlign: TextAlign.center,),
         Text(""),
        Text(""),
         Text("-  2x keping CD Jurnal ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.center,),
        Text("-   1x Keping CD dikumpulkan di TU                     ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.center,),
        Text("-   Kelengkapan Dokumen                 ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.center,),
        Text("-  Form - form pengajuan KP ",style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.center,),
        
            ],
          )
          ),
    );
  }
}
