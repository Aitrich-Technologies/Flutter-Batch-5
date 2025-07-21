import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 247, 234, 234),
    body: Card(child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [const Text("login",style: TextStyle(fontSize: 50,height: 3,
        color: const Color.fromARGB(137, 33, 116, 5)),),
        const SizedBox(height: 10),
        Padding(padding: const EdgeInsets.all(20),
       child: TextField(decoration: InputDecoration(hintText: "username",
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)   
       ),),), ),
       const SizedBox(height: 2,),
       Padding(padding: const EdgeInsets.all(20),
       child: TextField(decoration: InputDecoration(labelText: "password",
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),),),
       ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
     backgroundColor: CupertinoColors.activeGreen,),
     child: const Text("login",style: TextStyle(color: const Color.fromARGB(255, 232, 241, 241)),),),
      SizedBox(width: 10,),
     const Padding(padding: const EdgeInsets.all(30),
     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [Icon(Icons.facebook,size: 50,color: Colors.blueAccent,),//
     SizedBox(width: 40,),Icon(Icons.email,size: 50,color: Colors.redAccent,),//
     SizedBox(width: 40,),Icon(Icons.phone_iphone,size: 50,),//
     SizedBox(width: 40,),],),
     ),
     const Padding(padding: const EdgeInsets.all(8),
     child: Text("Already have an account"),
     ),
     TextButton(onPressed: (){},child: const Text("signup",style: TextStyle(color: Colors.red),),)
     ],
    ),),),);
  }
}