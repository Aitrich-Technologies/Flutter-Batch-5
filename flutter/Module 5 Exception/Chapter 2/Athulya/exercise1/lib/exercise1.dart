import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ErrorScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: 30,),
            Text(
              "Title",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.message),
                SizedBox(width: 8), 
                Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    
                    
                  ),),],),],),),);}}
