import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(home: DefaultTabController(length: 3,
     child:Scaffold(appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 232, 220, 88),
     title: Text("Home",),
     bottom: TabBar(
      tabs: [Tab(icon: Icon(Icons.message)),
      Tab(icon: Icon(Icons.camera),),
      Tab(icon: Icon(Icons.settings),)],
      ),centerTitle:true ,),
      
      body: TabBarView(children: [Container(color: Colors.redAccent,child: 
        Center(child: Text("chat screen"),),),
        Container(color: const Color.fromARGB(255, 59, 207, 143),child:
      Center(child: Text("camera screen"),),),
      Container(color:Colors.cyanAccent,child: 
      Center(child: Text("settings screen"),),)
      ])
    
    )
    ,),
    );
}}