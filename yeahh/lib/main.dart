import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'Home.dart';
import 'Pengajuan.dart';
import 'Settings.dart';
import 'Workouts.dart';
import 'About.dart';
import 'heroview.dart';
import 'login_page.dart';
import 'Jadwal.dart';

void main() {
  runApp(MaterialApp(
  
    home:LoginPage(), //MainWidget(),
    theme: ThemeData(primaryColor: Colors.green),
  ));
}

class MainWidget extends StatefulWidget {
  
  @override
  MainWidgetState createState() => MainWidgetState();
} 

class MainWidgetState extends State<MainWidget> {
  int currentTab = 0;
  static String tag = 'home-page';
  final List<Widget> screens = [
    Home(), Topik(), TopikKp(),herohome()
  ];
  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Kerja Praktek'),),
       drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Ivander"),
              accountEmail: Text("Ivander@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage("https://m.media-amazon.com/images/M/MV5BMjUzZTJmZDItODRjYS00ZGRhLTg2NWQtOGE0YjJhNWVlMjNjXkEyXkFqcGdeQXVyMTg4NDI0NDM@._V1_UY317_CR51,0,214,317_AL_.jpg"),

              ),
              
            ),
            new ListTile(
              title: Text("About Page"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context,new MaterialPageRoute(
                  builder: (BuildContext context) => AboutPage())
                
                );
              },
            ),
            
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: Text("Pengumuman"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                 builder: (BuildContext context) => Pengumuman())
                
                );
              },
            ),
              new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: Text("LogOut"),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context,new MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage())
                
                );
              },
            ),
          ],
        ),
      ),
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          //bmnav.BottomNavItem(Icons.fitness_center, label: 'Workouts'),
          bmnav.BottomNavItem(Icons.person, label: 'Submit Topik'),
          bmnav.BottomNavItem(Icons.view_headline, label: 'Topik KP')
        ],
      ),
    );
  }
}







