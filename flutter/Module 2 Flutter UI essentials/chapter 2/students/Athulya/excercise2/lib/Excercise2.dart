import 'package:flutter/material.dart';

class Excercise2 extends StatefulWidget {
  const Excercise2({super.key});

  @override
  State<Excercise2> createState() => _Excercise2State();
}

class _Excercise2State extends State<Excercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blue,title: Text("AppBar"),centerTitle: true,
    ),
    
    body:Column (crossAxisAlignment: CrossAxisAlignment.start,
    children: [Padding(padding: EdgeInsets.only(left: 16,top: 16),
    child: Text("promotions",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
    ),
    ),
    Container(width: 450,height: 250,child: Image.asset("image/phone.jpeg"),
    ),
    Padding(padding: EdgeInsets.only(left: 40,top: 15)
    ),
    Text("Featured products",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
    ),
    GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
    crossAxisSpacing: 8,mainAxisSpacing: 8),itemCount: 16,
     itemBuilder:(context,index) {return Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
     ),
     );
     }
      
     
     )
    ] ,
    ),
    );
    }
}