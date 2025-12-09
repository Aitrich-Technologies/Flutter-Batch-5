import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(backgroundColor: Colors.red,title: Text("Login page"),centerTitle: true,),
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(labelText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              )
            ),
          ),
          ),SizedBox(height: 20,),
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
          )
        ],
      ),
     ),
    );
  }
}