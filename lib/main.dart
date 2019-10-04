import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      home: MainPage(),
    );
  }
}
