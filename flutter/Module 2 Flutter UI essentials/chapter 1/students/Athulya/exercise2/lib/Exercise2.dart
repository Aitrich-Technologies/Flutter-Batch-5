import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1601597111205-6c742c44a3c7?auto=format&fit=crop&w=800&q=60",
              height: 200, // Optional: set height/width if needed
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your Account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Create an account so you can manage your personal finances",
                  style: TextStyle(fontSize: 16),
                ),               
                const TextField(
  decoration: InputDecoration(
    labelText: "Enter your name",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
),const SizedBox(height: 20,),
const TextField(decoration: InputDecoration(labelText: "Enter Number",
border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))
)
),
),const SizedBox(height: 20,),
const TextField(decoration: InputDecoration(
  labelText: "Enter password",
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  )
),
),
SizedBox(height: 20,),Padding(padding: EdgeInsets.all(10),),

ElevatedButton(onPressed: () {}, child: const Text("SIGN UP",style: TextStyle(color: Color.fromARGB(255, 253, 253, 253)),),
 style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 9, 79, 230),
 padding: EdgeInsets.symmetric(vertical: 20,horizontal: 150)),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
