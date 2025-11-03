import 'package:flutter/material.dart';

class ThemingExample45 extends StatefulWidget {
  @override
  _ThemingExample45State createState() => _ThemingExample45State();
}

class _ThemingExample45State extends State<ThemingExample45> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Theming Example'),
        ),
  
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 200,backgroundColor: const Color.fromARGB(255, 186, 201, 213),
            ),
            
          ),SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: "Name"),
            ),
            
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: "Phone"),),
          ),

          SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(decoration: InputDecoration(labelText: "Password"),),
           ),
           SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                isDarkMode=!isDarkMode;
              });
            }, child: Text("Toggle Theme"))
        ],
      ),
        ),
            );
          
        
      
    
  }
}