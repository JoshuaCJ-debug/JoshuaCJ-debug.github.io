import 'package:flutter/material.dart';
import 'package:bonobo/welcome.dart'; 
import 'package:bonobo/userdetails.dart';
import 'package:bonobo/dietinformation.dart';
import 'package:bonobo/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bonobo',
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(), 
        '/userdetails': (context) => userdetails(), 
        '/dietinformation': (context) => Dietinformation(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}



/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bonobo',

      /// TODO Replace with your first screen class name
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("My FlutterViz Demo"),
    );
  }
} */
