import 'package:activity2/Home.dart';
import 'package:activity2/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs=await SharedPreferences.getInstance();
  bool isLoggedIn=prefs.getBool("loggedIn")?? false;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: isLoggedIn?const Homepage():const Login(),
  ));
}

