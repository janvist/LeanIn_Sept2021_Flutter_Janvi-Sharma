import 'package:flutter/material.dart';

void main() => runApp(layout());

class layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
              backgroundColor: Colors.teal[200],
              centerTitle: true,
              title: const Text(
                "BOOK RECOMMENDATIONS FOR YOU",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
          body: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.teal,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Image(
                      image: AssetImage('assets/download.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30.0),
                  child: const Text(
                    'GENRE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  //color: Colors.white,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  child: Text('FICTION'),
                ),
                Container(
                  //color: Colors.white,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  child: Text('THRILLER'),
                ),
                Container(
                  //color: Colors.white,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  child: Text('CRIME'),
                ),
                Container(
                  //color: Colors.white,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  child: Text('ROMANCE'),
                ),
              ])),
    );
  }
}
