import 'package:ngobar2/detailscreen.dart' as second_page;

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ngobar2/page7.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: DetailScreen(),
    );
  }
}

// class DetailScreen extends StatefulWidget {
//   @override
//   _home createState() => _home();
// }

// /*class DetailScreen2 extends StatefulWidget {
//   @override
//   _list createState() => _list();
// }*/

// //class _list extends State<DetailScreen2> {}

// class _home extends State<DetailScreen> {
//   int _selectedNavbar = 0;

//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _selectedNavbar = index;
//     });
//   }

//   Widget build(BuildContext context) {
//     final _listPage = <Widget>[
//       second_page.SAnywhere2(),
//       second_page.SAnywhere2(),
//       second_page.SAnywhere2(),
//       second_page.SAnywhere2(),
//     ];
//     final _bottomNavBarItems = <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         title: Text('Home'),
//         icon: Icon(Icons.home),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.favorite),
//         title: Text('Favorite'),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.search),
//         title: Text('Profile'),
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         title: Text('Profile'),
//       ),
//     ];

//     final _bottomNavBar = BottomNavigationBar(
//       items: _bottomNavBarItems,
//       currentIndex: _selectedNavbar,
//       selectedItemColor: Colors.blueAccent,
//       unselectedItemColor: Colors.grey,
//       onTap: _changeSelectedNavBar,
//     );
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               //baris pertama ada 1 kolom
//               /*Container(
//                 child: _listPage[_selectedNavbar],
//               ),*/
//               Container(
//                 height: 300,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage('images/room.jpg'), fit: BoxFit.cover),
//                 ),
//                 child: Row(
//                   //ada 2 baris
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       padding: EdgeInsets.only(top: 8.0, left: 8.0),
//                       child: IconButton(
//                         icon: new Icon(
//                           Icons.apps,
//                           color: Colors.white,
//                           size: 30.0,
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => second_page.SAnywhere2()),
//                           );
//                         },
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 200.0),
//                       child: Column(children: <Widget>[
//                         new Text(
//                           'Sale Up to 60%',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             shadows: [
//                               Shadow(
//                                   color: Colors.white.withOpacity(0.7),
//                                   offset: Offset(15, 15),
//                                   blurRadius: 15),
//                             ],
//                             fontFamily: 'Oswald',
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         new Text(
//                           'Only on Monday until Thursday',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             shadows: [
//                               Shadow(
//                                   color: Colors.white.withOpacity(1),
//                                   offset: Offset(15, 15),
//                                   blurRadius: 15),
//                             ],
//                             fontFamily: 'Oswald',
//                             fontSize: 20,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                       ]),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 15.0, right: 10.0),
//                       child: IconButton(
//                         icon: new Icon(
//                           Icons.shopping_cart,
//                           color: Colors.black,
//                           size: 30.0,
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => second_page.SAnywhere2()),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
//                 //padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(12.0),
//                               topRight: Radius.circular(12.0)),
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomCenter,
//                             colors: <Color>[
//                               Colors.brown,
//                               Colors.white54,
//                               Colors.grey,
//                             ],
//                           ),
//                           boxShadow: []),
//                       padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
//                       //child: Container
//                       // padding: EdgeInsets.all(2.0),
//                       child: Text(
//                         'New Arrivals',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           shadows: [
//                             Shadow(
//                                 color: Colors.white.withOpacity(0.7),
//                                 offset: Offset(15, 15),
//                                 blurRadius: 15),
//                           ],
//                           fontFamily: 'Oswald',
//                           fontSize: 20,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.fromLTRB(6, 2, 2, 2),
//                       margin: EdgeInsets.only(right: 5.0),
//                       //child: Container
//                       //padding: EdgeInsets.all(2.0),
//                       child: Row(
//                         children: <Widget>[
//                           new Text(
//                             'See All',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.white.withOpacity(0.7),
//                                     offset: Offset(15, 15),
//                                     blurRadius: 15),
//                               ],
//                               fontFamily: 'Oswald',
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Container(
//                             child: IconButton(
//                               icon: new Icon(
//                                 Icons.arrow_right,
//                                 color: Colors.black,
//                                 size: 30.0,
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           second_page.SAnywhere2()),
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               /*listview*/
//               Container(
//                 margin: EdgeInsets.all(10.0),
//                 //height: 50,
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   //scroll horizontal
//                   children: <Widget>[
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/chair.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.only(top: 100.0),
//                       //paddin: EdgeInsets.only(top: 200.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Text(
//                             'Chair',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.black.withOpacity(0.5),
//                                     offset: Offset(15, 15),
//                                     blurRadius: 15),
//                               ],
//                               fontFamily: 'Oswald',
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           /*Text(
//                             'Chair',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.white.withOpacity(0.7),
//                                     offset: Offset(15, 15),
//                                     blurRadius: 15),
//                               ],padding: EdgeInsets.only(top: 200.0),
//                               fontFamily: 'Oswald',
//                               fontSize: 20,
//                               fontWeight: FontWeight.normal,
//                             ),
//                           ),*/
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         width: 150.0,
//                         height: 150.0,
//                         margin: EdgeInsets.all(5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(20.0),
//                               topLeft: Radius.circular(20.0)),
//                           image: DecorationImage(
//                               image: AssetImage('images/bowl.jpg'),
//                               fit: BoxFit.cover),
//                         ),
//                         padding: const EdgeInsets.all(4.0),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         width: 150.0,
//                         height: 150.0,
//                         margin: EdgeInsets.all(5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(20.0),
//                               topLeft: Radius.circular(20.0)),
//                           image: DecorationImage(
//                               image: AssetImage('images/chair2.jpg'),
//                               fit: BoxFit.cover),
//                         ),
//                         padding: const EdgeInsets.all(4.0),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         width: 150.0,
//                         height: 150.0,
//                         margin: EdgeInsets.all(5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(20.0),
//                               topLeft: Radius.circular(20.0)),
//                           image: DecorationImage(
//                               image: AssetImage('images/sofa.jpg'),
//                               fit: BoxFit.cover),
//                         ),
//                         padding: const EdgeInsets.all(4.0),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         width: 150.0,
//                         height: 150.0,
//                         margin: EdgeInsets.all(5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(20.0),
//                               topLeft: Radius.circular(20.0)),
//                           image: DecorationImage(
//                               image: AssetImage('images/desainInterior.jpg'),
//                               fit: BoxFit.cover),
//                         ),
//                         padding: const EdgeInsets.all(4.0),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(12.0),
//                               topRight: Radius.circular(12.0)),
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomCenter,
//                             colors: <Color>[
//                               Colors.brown,
//                               Colors.white54,
//                               Colors.grey,
//                             ],
//                           ),
//                           boxShadow: []),
//                       padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
//                       //child: Container
//                       // padding: EdgeInsets.all(2.0),
//                       child: Text(
//                         'Top Trends',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           shadows: [
//                             Shadow(
//                                 color: Colors.white.withOpacity(0.7),
//                                 offset: Offset(15, 15),
//                                 blurRadius: 15),
//                           ],
//                           fontFamily: 'Oswald',
//                           fontSize: 20,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       //width: 60,
//                       padding: EdgeInsets.fromLTRB(6, 2, 2, 2),
//                       margin: EdgeInsets.only(right: 5.0),
//                       //child: Container
//                       // padding: EdgeInsets.all(2.0),
//                       child: Row(
//                         children: <Widget>[
//                           new Text(
//                             'See All',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.white.withOpacity(0.7),
//                                     offset: Offset(15, 15),
//                                     blurRadius: 15),
//                               ],
//                               fontFamily: 'Oswald',
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Container(
//                             child: IconButton(
//                               icon: new Icon(
//                                 Icons.arrow_right,
//                                 color: Colors.black,
//                                 size: 30.0,
//                               ),
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           second_page.SAnywhere2()),
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               /*listview*/
//               Container(
//                 margin: EdgeInsets.all(10.0),
//                 //height: 50,
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal, //scroll horizontal
//                   children: <Widget>[
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10.0),
//                 //height: 50,
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal, //scroll horizontal
//                   children: <Widget>[
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                   ],
//                 ),
//               ),
//               /*Container(
//                 margin: EdgeInsets.symmetric(vertical: 16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Column(
//                       children: <Widget>[
//                         Icon(Icons.calendar_today),
//                         SizedBox(height: 8.0),
//                         Text('Open Everyday'),
//                       ],
//                     ),
//                     Column(
//                       children: <Widget>[
//                         Icon(Icons.access_time),
//                         SizedBox(height: 8.0),
//                         Text('09.00 - 20.00'),
//                       ],
//                     ),
//                     Column(
//                       children: <Widget>[
//                         Icon(Icons.monetization_on),
//                         SizedBox(height: 8.0),
//                         Text('RP 25.000'),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 16.0),
//                 child: Text(
//                   'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal, //scroll horizontal
//                   children: <Widget>[
//                     Container(
//                       width: 150.0,
//                       height: 150.0,
//                       margin: EdgeInsets.all(5.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(20.0),
//                             topLeft: Radius.circular(20.0)),
//                         image: DecorationImage(
//                             image: AssetImage('images/farm-house.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                       padding: const EdgeInsets.all(4.0),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: Image.network(
//                           'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: Image.network(
//                           'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
//                     ),
//                   ],
//                 ),
//               )*/
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: _bottomNavBar,
//       /*(items: const <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       title: Text('home'),
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.favorite),
//     title: Text('Favorite'),
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.search),
//     title: Text('Profile'),
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.person),
//     title: Text('Profile'),
//     ),
//     ],
//     currentIndex: _selectedNavbar,
//     selectedItemColor: Colors.blueAccent,
//     unselectedItemColor: Colors.grey,
//     onTap: _changeSelectedNavBar,
//     ),*/
//     );
//   }
// }
