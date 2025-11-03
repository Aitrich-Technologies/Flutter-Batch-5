import 'package:flutter/material.dart';

class Activity5 extends StatefulWidget {
  const Activity5({super.key});

  @override
  State<Activity5> createState() => _Activity5State();
}

class _Activity5State extends State<Activity5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,centerTitle: true,title: Text("Prefix and Suffix Icon"),
      ),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(labelText: "Enter text",prefixIcon: Icon(Icons.email),suffixIcon: Icon(Icons.remove_red_eye),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),),
    );
  }
}