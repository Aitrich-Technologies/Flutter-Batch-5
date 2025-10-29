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
       body: Center(
          // Add your circle avatar properties here
             child:      
                  ElevatedButton(
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
                child: Text('Toggle Theme'),
              ),
            
       ), ),
            );
          
        
      
    
  }
}