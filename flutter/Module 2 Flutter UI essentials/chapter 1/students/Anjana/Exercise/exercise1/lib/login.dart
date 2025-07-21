import 'package:flutter/material.dart';

class Exercises12 extends StatelessWidget {
  const Exercises12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 39, 41, 44),
      body: Card(
        
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
        
            children: [Text("login",style: TextStyle(fontSize: 50,height: 3,color: const Color.fromARGB(137, 33, 116, 5)),),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(decoration: InputDecoration(
                hintText: "username",
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(12)),),),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: 
              TextField(decoration: InputDecoration(
              labelText: "password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20) ),
            backgroundColor: Colors.green,padding: EdgeInsets.symmetric(horizontal: 100,vertical: 15)),
          child: Text("login",style: TextStyle(color:const Color.fromARGB(255, 232, 241, 241))),
            
            ),
            SizedBox(width: 20,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.facebook,size: 50,color: Colors.blueAccent,),
                // SizedBox(width: 60,),
                Icon(Icons.email,size: 50,color: Colors.red,),
                // SizedBox(width: 60,),
                Icon(Icons.phone_iphone,size: 50,),
                // SizedBox(width: 60,),
              ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Already have an account"),
            ),
            TextButton(onPressed: (){}, child: Text("Signup",style: TextStyle(color: Colors.red),))
            ]
          )
          ),
          
      ),
      )
    ;
  }
}

