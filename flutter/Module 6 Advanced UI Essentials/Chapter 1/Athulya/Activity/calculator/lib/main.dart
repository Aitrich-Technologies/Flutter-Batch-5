import 'package:calculator/calculator1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:Calculator1()
    );
  }
}

