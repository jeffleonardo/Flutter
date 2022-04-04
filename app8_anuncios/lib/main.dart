import 'package:app8_anuncios/home.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "Flutter Demo",
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: home(),
    );
  } 
}