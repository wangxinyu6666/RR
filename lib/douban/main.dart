import 'pages/main/main.dart';
//import "widgets/star_rate.dart";
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "豆瓣",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
             //splashColor: Colors.transparent,
             //highlightColor: Colors.transparent,
      ),
      home: MyMainPage(),
    );
  }
}
