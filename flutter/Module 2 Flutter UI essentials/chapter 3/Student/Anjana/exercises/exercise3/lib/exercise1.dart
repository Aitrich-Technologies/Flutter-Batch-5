import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("home",
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white)),
    backgroundColor: Colors.brown,centerTitle: true,
    actions: [Icon(Icons.notifications,color: Colors.white,)],),
    body: SingleChildScrollView(
      child: Column(children: [Padding(padding: EdgeInsets.all(10)),Image.asset("image/images (2).jpeg",fit: BoxFit.cover,),
      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoB0wm_m9SkP0ybmeP_yI33XZ5lcB2JU1zwA&s "),
      Image.asset("")],),
    ),
    
    );
  }
}