import 'package:flutter/material.dart';
import 'package:ngobar2/detailscreen.dart' as second_page;

import 'dart:io';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Wisata Bandung',
//       theme: ThemeData(),
//       home: DetailScreen(),
//     );
//   }
// }

class DetailScreen extends StatefulWidget {
  @override
  _home createState() => _home();
}

/*class DetailScreen2 extends StatefulWidget {
  @override
  _list createState() => _list();
}*/

//class _list extends State<DetailScreen2> {}

class _home extends State<DetailScreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      second_page.SAnywhere2(),
      second_page.SAnywhere2(),
      second_page.SAnywhere2(),
      second_page.SAnywhere2(),
    ];
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        title: Text('Home'),
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text('Favorite'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text('Profile'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Profile'),
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedNavbar,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _changeSelectedNavBar,
    );

    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //baris pertama ada 1 kolom
              /*Container(
                child: _listPage[_selectedNavbar],
              ),*/
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/room.jpg'), fit: BoxFit.cover),
                ),
                child: Row(
                  //ada 2 baris
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 40,
                      padding: const EdgeInsets.only(top: 100.0),
                      child: TextField(
                        decoration: InputDecoration(
                            icon:
                                Icon(Icons.search_rounded, color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: "Email: ",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    /*child: IconButton(
                        icon: new Icon(
                          Icons.apps,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => second_page.SAnywhere2()),
                          );
                        },
                      ),*/
                    Container(
                      padding: EdgeInsets.only(
                        top: 80.0,
                      ),
                      child: IconButton(
                        icon: new Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => second_page.SAnywhere2()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                height: 50,
                //padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.white,
                              Colors.white54,
                              Colors.white,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.only(left: 4.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: FlatButton(
                        child: Text(
                          'Kitchen',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.white,
                              Colors.white54,
                              Colors.white,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.only(left: 4.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: FlatButton(
                        child: Text(
                          'Kitchen',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.white,
                              Colors.white54,
                              Colors.white,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.only(left: 4.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: FlatButton(
                        child: Text(
                          'Bedrooms',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.white,
                              Colors.white54,
                              Colors.white,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.only(left: 4.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: FlatButton(
                        child: Text(
                          'Sitting Rooms',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.white,
                              Colors.white54,
                              Colors.white,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: EdgeInsets.only(left: 4.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: FlatButton(
                        child: Text(
                          'Bathrooms',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                  ],
                ),
              ),
              /*listview*/
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/chair.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 150.0),
                        child: Text(
                          'Chair',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 200.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/chair2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 150.0),
                        child: Text(
                          'Chair',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/bowl.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 150.0),
                        child: Text(
                          'Chair',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/desk.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 150.0),
                        child: Text(
                          'Chair',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 150.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/chair2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 150.0),
                        child: Text(
                          'Chair',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),

                    /*MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/chair.jpg',
                            ),
                            Text('Armless Couch')
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            //return detailArmless();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Image.asset('images/chair2.jpg'),
                            Text('Glasswells')
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            //return detailGlasswells();
                          }));
                        }),*/
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12.0),
                              topRight: Radius.circular(12.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.brown,
                              Colors.white54,
                              Colors.grey,
                            ],
                          ),
                          boxShadow: []),
                      padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: Text(
                        'Best Seller',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.white.withOpacity(0.7),
                                offset: Offset(15, 15),
                                blurRadius: 15),
                          ],
                          fontFamily: 'Oswald',
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      //width: 60,
                      padding: EdgeInsets.fromLTRB(6, 2, 2, 2),
                      margin: EdgeInsets.only(right: 5.0),
                      //child: Container
                      // padding: EdgeInsets.all(2.0),
                      child: Row(
                        children: <Widget>[
                          new Text(
                            'See All',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                    color: Colors.white.withOpacity(0.7),
                                    offset: Offset(15, 15),
                                    blurRadius: 15),
                              ],
                              fontFamily: 'Oswald',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: new Icon(
                                Icons.arrow_right,
                                color: Colors.black,
                                size: 30.0,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          second_page.SAnywhere2()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              /*listview*/
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 200.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/chair.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 100.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/chair2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 100.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/bowl.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 100.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/desk.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 100.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage('images/chair2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: FlatButton(
                        //color: Colors.white,
                        padding: EdgeInsets.only(top: 100.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        onPressed: () => debugPrint('FlatButton di tekan'),
                      ),
                    ),

                    /*MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/chair.jpg',
                            ),
                            Text('Armless Couch')
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            //return detailArmless();
                          }));
                        }),
                    MaterialButton(
                        child: Column(
                          children: <Widget>[
                            Image.asset('images/chair2.jpg'),
                            Text('Glasswells')
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            //return detailGlasswells();
                          }));
                        }),*/
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
