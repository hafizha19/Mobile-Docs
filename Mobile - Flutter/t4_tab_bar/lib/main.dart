import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Tab Bar',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.computer),
                  text: 'Komputer',
                ),
                Tab(
                  icon: Icon(Icons.print),
                  text: 'Printer',
                ),
                Tab(
                  icon: Icon(Icons.scanner),
                  text: 'Scanner',
                )
              ],
            ),
            title: Text('Contoh TabBar'),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.computer, size: 150),
                    Text('Komputer'),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.print, size: 150,),
                    Text('Printer'),
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.scanner, size: 150),
                    Text('Scanner'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Menu Drawer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Menu Drawer'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Ini adalah contoh menu drawer',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('Teknik Informatika'),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: (){

                },
              ),
              ListTile(
                title: Text('Berita'),
                onTap: (){

                },
              ),
              ListTile(
                title: Text('Akademik'),
                onTap: (){

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}