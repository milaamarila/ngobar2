import '/main.dart' as home;
import 'package:flutter/material.dart';

void main() {
  runApp(SAnywhere2());
}

class SAnywhere2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.only(left: 8.0, bottom: 8.0),
        ),
        title: Text(
          'SAnywhere Information',
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.deepPurpleAccent,
                  Colors.purpleAccent,
                ]),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home.DetailScreen),
              );
            },
          ),
          IconButton(
            icon: new Icon(Icons.help, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: new Icon(Icons.chevron_right, color: Colors.white),
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'SAnywhere adalah aplikasi yang membantu anda dalam belajar. '
            'Gunakan aplikasi ini dimanapun dan kapanpun kamu berada',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                wordSpacing: 2,
                letterSpacing: 3),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.deepPurpleAccent,
                Colors.purpleAccent,
              ]),
        ),
      ),
    );
  }
}
