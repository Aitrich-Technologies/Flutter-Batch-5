import 'package:exercise2/exercise2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'home page',
      initialRoute: "/",
      routes: {
        "/":(context)=> First(),
        "/first":(context)=>Second(),
        "/fifith":(context)=>Third()
        
      }
       
    );}}