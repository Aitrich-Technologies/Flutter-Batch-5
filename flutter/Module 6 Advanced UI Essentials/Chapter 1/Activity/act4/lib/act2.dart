import 'package:flutter/material.dart';

class Act2 extends StatefulWidget {
  const Act2({super.key});

  @override
  State<Act2> createState() => _Act2State();
}

class _Act2State extends State<Act2> {
  bool _isMoved = false;
  bool _islarge = false;
  void _togglePosition() {
    setState(() {
      _isMoved = !_isMoved;
      _islarge = !_islarge;
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
                child: AnimatedContainer(duration: Duration(seconds: 2,),
                  width: _islarge?150:100,
                  height: _islarge?150 :100,
                  color: Colors.blue,
                  child: Center(child: Text("tap me ")),
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
