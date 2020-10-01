import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'constatnts.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBgColor,
      ),
      home: InputPage(),
    );
  }
}










