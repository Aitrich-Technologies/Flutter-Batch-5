import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  bool isdarkmode = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isdarkmode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("contact"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isdarkmode = !isdarkmode;
                });
              },
              icon: Icon(isdarkmode ? Icons.dark_mode : Icons.light_mode),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(labelText: "name")),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(labelText: "email")),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(labelText: "message"),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isdarkmode = !isdarkmode;
                });
              },
              child: Text("submitt"),
              style: ElevatedButton.styleFrom(
                backgroundColor: isdarkmode
                    ? Colors.red
                    : const Color.fromARGB(255, 50, 49, 49),
              ),
            ),
            SizedBox(height: 250),
            Text("info"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 50),
                Icon(Icons.call),
                SizedBox(width: 50),
                Icon(Icons.business_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
