import 'package:activity2/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

 void logout(BuildContext context)async{
  SharedPreferences prefs=await SharedPreferences.getInstance();
  await prefs.setBool("loggedIn", false);

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(onPressed: ()=>logout(context), icon: Icon(Icons.logout))
        ],
      ),
      body: const Center(child: Text("Welcome ! you are logged in"),),
    );
  }
}