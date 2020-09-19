import 'package:flutter/material.dart';
import 'package:flutter_documentations/layout.dart';

void main() {
  runApp(new MaterialApp(
    home: new Tugas2(),
    title: 'Flutter Docs',
  ));
}

class Rowandcolumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Row and Column 1'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Tugas2()));
            },
          )
        ],
      ),
      body: Center(
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              'https://images.unsplash.com/photo-1527443195645-1133f7f28990?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
              width: 100,
            ),
            Image.network(
              'https://images.unsplash.com/photo-1517059224940-d4af9eec41b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
              width: 100,
            ),
            Image.network(
              'https://images.unsplash.com/photo-1515248137880-45e105b710e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60',
              width: 100,
            )
          ],
        )),
      ),
    );
  }
}

class Tugas2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Tugas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Layout()));
            },
          )
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.network(
                                'https://fkik.uin-malang.ac.id/wp-content/uploads/2016/08/uin-malang-FAK-300x287.png',
                                width: 50,
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  'Teknik Informatika',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text('UIN Maulana Malik Ibrahim Malang'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Keluhuran Akhlak, Keluasan Ilmu, Kematangan Provesional'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
