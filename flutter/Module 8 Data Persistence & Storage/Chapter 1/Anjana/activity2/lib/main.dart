



import 'package:activity2/home.dart';
import 'package:activity2/login.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isloogedin = preferences.getBool("loggedin")?? false;
  runApp(MaterialApp(home: isloogedin? const Homepage():const Loginpage() ));
}