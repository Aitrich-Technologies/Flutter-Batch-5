import 'package:flutter/material.dart';

class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  State<Activity2> createState() => _Activity1State();
}

class _Activity1State extends State<Activity2> {
  bool bool_isMoved = false;
  bool bool_isLarge = false;

  void_togglePosition() {
    setState(() {
      bool_isMoved = !bool_isMoved;
      bool_isLarge = !bool_isLarge;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("AnimatedPositioned Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              curve: Curves.easeInOut,
              left: bool_isMoved ? 200 : 50,
              top: bool_isMoved ? 400 : 50,
              duration: Duration(seconds: 1),
              child: GestureDetector(
                onTap: void_togglePosition,
                child: AnimatedContainer(duration: Duration(seconds: 1),
                  width: bool_isLarge?150:100,
                  height: bool_isLarge?150:100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Tap Me",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
