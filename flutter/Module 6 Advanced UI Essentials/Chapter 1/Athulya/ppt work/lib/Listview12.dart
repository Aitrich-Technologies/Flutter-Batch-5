import 'package:flutter/material.dart';

class Listview12 extends StatefulWidget {
  const Listview12({super.key});

  @override
  State<Listview12> createState() => _Listview12State();
}

class _Listview12State extends State<Listview12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,title: Text("Home"),
      ),body: ListView(
        children: [ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Account",style: TextStyle(fontSize: 25),),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings",style: TextStyle(fontSize: 25),),
        )
        ],
      ),
    );
  }
}