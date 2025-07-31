import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Home"),centerTitle: true,
    backgroundColor: Colors.brown,),
    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/first");
            }, 
            child: Text("Notification"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(148, 138, 215, 178),),
            ),
            
            ),SizedBox(height: 30,),
            ElevatedButton(onPressed: (){Navigator.pushNamed(context, "/fifith");}, 
            child: Text("Profile"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(139, 213, 147, 147)),)
        ],
      ),
    ),
    );
  }
}
//notification page
class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Notification"),
    backgroundColor: Colors.lightGreenAccent,),
    body: Center(child: ElevatedButton(onPressed: (){
      Navigator.pop(context);
      },
       child: Text("Back to home")),),
    );
  }
}
//profile page
class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("profile"),
    backgroundColor: const Color.fromARGB(255, 49, 198, 183),),
    body: Center(child: ElevatedButton(onPressed: (){
      Navigator.pop(context);
      
      }, 
      child: Text("Back to home page"),
    style: ElevatedButton.styleFrom(backgroundColor:
     const Color.fromARGB(255, 124, 175, 24)),),),);
  }
}