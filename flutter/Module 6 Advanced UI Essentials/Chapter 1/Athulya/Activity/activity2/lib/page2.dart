import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: 
      Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Text("Kitty",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.pink),
            ),
            Text("   Log in on kitty :)",style: TextStyle(fontSize: 30),),
            Image.asset("image/download (3).jpg",height: 300,width: 300,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kitty@gmail.com",filled: true,fillColor: const Color.fromARGB(255, 224, 219, 219),
                  prefixIcon: Icon(Icons.email,color: Colors.pink,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                hintText: "*******",filled: true,fillColor:  const Color.fromARGB(255, 224, 219, 219),
                prefixIcon: Icon(Icons.key_outlined,color: Colors.pink,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
              ),
            ),SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              elevation: 8,padding: EdgeInsets.symmetric(horizontal: 120,vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20)
              )
            ),
            child: Text("LOGIN WITH EMAIL")
            
            ),SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Text("Forgot Password ?",style: TextStyle(fontSize: 18),),TextButton(onPressed: (){}, child: Text("Click Here",style: TextStyle(fontSize: 18,color: Colors.black),))
                ],
              ),
            )
          ],
        ),
      ),),
    );
  }
}