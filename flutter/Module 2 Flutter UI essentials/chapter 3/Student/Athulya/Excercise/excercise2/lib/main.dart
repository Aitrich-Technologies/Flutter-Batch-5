
import 'package:excercise2/navigation2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: myApp(),));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Rouyed Demo',
      initialRoute: '/',
      routes: {
        '/':(context)=>first(),
        '/second':(context)=>second(),
        '/Third':(context)=>Third()
        
      });}}
      