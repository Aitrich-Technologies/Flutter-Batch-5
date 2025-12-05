import 'package:activity2/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Homepage"),actions: [IconButton(onPressed: ()=>logout(context), icon: Icon(Icons.logout))],),
    body: Center(child: Text("welcome! you are logged in."),),
    );
  }
  
  void logout(BuildContext context)async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool("loggedin", false);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
  }
}