import 'package:flutter/material.dart';
import 'package:naija_recipe/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xffffffff),
//          primaryColor: Color(0xfff2c200),
          scaffoldBackgroundColor: Color(0xfff2c200),
          textTheme: TextTheme(
            body1: TextStyle(color: Color(0xffffffff)),
          )),
      home: Home(),
    );
  }
}


