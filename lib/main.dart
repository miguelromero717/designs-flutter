import 'package:designs/src/pages/basic_design_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs App',
      initialRoute: 'basic',
      routes: {
        'basic' : (BuildContext context) => BasicDesign()
      },
    );
  }
}