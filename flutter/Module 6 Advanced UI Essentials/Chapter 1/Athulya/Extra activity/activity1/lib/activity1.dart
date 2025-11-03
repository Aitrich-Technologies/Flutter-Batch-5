import 'package:flutter/material.dart';

class Activity1 extends StatefulWidget {
  const Activity1({super.key});

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
bool bool_isMoved=false;

void_togglePosition(){
  setState(() {
   bool_isMoved =!bool_isMoved;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
      title:Text("AnimatedPositioned Example"),centerTitle: true,),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(curve: Curves.easeInOut,left: bool_isMoved?200:50,top: bool_isMoved?400:50,child: GestureDetector(
              onTap: void_togglePosition,child: Container(
                width: 100,height: 100,color: Colors.blue,
                child: Center(
                  child: Text("Tap Me",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ),
            ), duration: Duration(seconds: 1)
            )
          ],
        ),
      ),
    );
  }
}