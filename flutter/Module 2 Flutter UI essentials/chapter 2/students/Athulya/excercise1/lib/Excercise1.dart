import 'package:flutter/material.dart';

class Excercise1 extends StatefulWidget {
  const Excercise1({super.key});

  @override
  State<Excercise1> createState() => _Excercise1State();
}

class _Excercise1State extends State<Excercise1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DefaultTabController(length: 3, child: Scaffold
    (appBar: AppBar(backgroundColor: const Color.fromARGB(255, 255, 94, 148),
    title: Text("Home"),bottom: TabBar(tabs: [
      Tab(icon: Icon(Icons.message),
      ),Tab(icon: Icon(Icons.camera),
      ),Tab(icon: Icon(Icons.settings),
      ),
    ]
    ),
        centerTitle: true,),
    body: TabBarView(children: [ Container(color:Colors.grey,child: Center(child: Text("Chat screen"),
    ),
    ),
      Container(color:Colors.deepOrange,child: Center(child: Text("camera screen"),
    ),
    ),
    Container(color:Colors.purple,child: Center(child: Text("camera screen"),
    ),
    ),
    ]),
    ),
    )
    );
  }
}


    

   