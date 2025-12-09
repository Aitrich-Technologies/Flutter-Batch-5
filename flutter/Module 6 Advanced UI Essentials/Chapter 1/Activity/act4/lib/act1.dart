import 'package:flutter/material.dart';

class Act1 extends StatefulWidget {
  const Act1({super.key});

  @override
  State<Act1> createState() => _Act1State();
}

class _Act1State extends State<Act1> {
  bool _isMoved = false;
  void _togglePosition() {
    setState(() {
      _isMoved = !_isMoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("animatedpostition example"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              child: GestureDetector(
                onTap: _togglePosition,
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  child: Text("tap me "),
                ),
              ),

              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              left: _isMoved ? 200 : 50,
              top: _isMoved ? 400 : 50,
            ),
          ],
        ),
      ),
    );
  }
}
