import 'package:designs/src/pages/basic_design_page.dart';
import 'package:designs/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(DesignsApp());
 
class DesignsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs App',
      initialRoute: '/',
      routes: {
        '/'     : (BuildContext context) => HomePage(),
        'basic' : (BuildContext context) => BasicDesignPage()
      },
    );
  }
}