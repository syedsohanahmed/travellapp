import 'package:classtwo/food.dart';
import 'package:classtwo/place.dart';
import 'package:classtwo/player.dart';
import 'package:classtwo/transport.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var _currentIndex = 1;
  final pages=[
    place(),
    food(),
    player(),
    transport()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("BD Travel"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
              icon: Icon(Icons.place), title: Text("Place")),
          BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.fastfood), title: Text("Food")),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.games), title: Text("Player")),
          BottomNavigationBarItem(
              backgroundColor: Colors.teal,
              icon: Icon(Icons.transfer_within_a_station),
              title: Text("Transport")),
        ],

      ),
      body: pages[_currentIndex],
    ),
    );
  }
}
