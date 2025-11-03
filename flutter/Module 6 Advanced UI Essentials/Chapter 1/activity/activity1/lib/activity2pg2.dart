import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Page2()));
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [SizedBox(height: 30,),
            Text(
              "bear",
              style: TextStyle(
                fontSize: 50,
                color: Colors.brown,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text("log in on bear", style: TextStyle(fontSize: 25)),
            SizedBox(height: 30),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcE6jR7CZmNjoF5rFGFPUo9sCrVmqBl4rX_Q&s",
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.email, size: 22, color: Colors.brown),
                    SizedBox(height: 5),
                    Text(
                      "bear@gmail.com",
                      style: TextStyle(fontSize: 22, color: Colors.brown),
                    ),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(244, 234, 220, 214),
                minimumSize: Size(30, 50),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.key, size: 22, color: Colors.brown),
                    SizedBox(height: 10),
                    Text(
                      "*********",
                      style: TextStyle(fontSize: 22, color: Colors.brown),
                    ),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(244, 234, 220, 214),
                minimumSize: Size(30, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.brown, width: 2),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Text(
                      "LOGIN WITH EMAIL",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 247, 245, 245),
                      ),
                    ),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                minimumSize: Size(30, 50),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Row(
                children: [
                  Text(
                    "Forgott password ?",
                    style: TextStyle(fontSize: 20, color: Colors.brown),
                  ),
                  SizedBox(width: 2),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Click here",
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
