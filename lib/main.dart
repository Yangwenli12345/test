import 'package:flutter/material.dart';
import 'package:sheeko/screens/Home.dart';
import 'package:sheeko/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {"Home": (context) => Home()},
    );
  }
}
