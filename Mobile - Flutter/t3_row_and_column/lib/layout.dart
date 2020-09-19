import 'package:flutter/material.dart';
import 'package:flutter_documentations/main.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'Rinjani Mountain',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text('Sembalun, Lombok Timur, NTB, Indonesia')
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text('41')
                ],
              )
            ],
          )
        ],
      ),
    );

    Widget iconSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _iconsForm(Colors.blue, Icons.call, 'CALL'),
          _iconsForm(Colors.blue, Icons.near_me, 'ROUTE'),
          _iconsForm(Colors.blue, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      margin: EdgeInsets.all(20),
      child: Text(
        'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggia 3.726 m. ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya Gunung ini merupakan bagian dari Taman Nasional Gunung Rinjani yang memiliki luas sekita 41.330 ha dan ini akan diusulkan penambahannya sehingga menjadi 76.000 ha ke arah barat dan timur. ',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Belajar Layout Artikel',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Belajar Layout Artikel'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Rowandcolumn()));
                },
              )
            ],
          ),
          body: ListView(
            children: [
              Column(
                children: <Widget>[
                  Image.network(
                      'https://images.unsplash.com/photo-1526494631344-8c6fa6462b17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'),
                  titleSection,
                  iconSection,
                  textSection,
                ],
              )
            ],
          )),
    );
  }

  Column _iconsForm(Color color, IconData icon, String text) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(icon, color: color)),
              Text(
                text,
                style: TextStyle(
                  color: color,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
