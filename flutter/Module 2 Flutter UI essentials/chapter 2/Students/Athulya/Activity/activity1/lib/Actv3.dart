import 'package:flutter/material.dart';

class Actv3 extends StatefulWidget {
  const Actv3({super.key});

  @override
  State<Actv3> createState() => _Actv3State();
}

class _Actv3State extends State<Actv3> {
  double _sliderValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent,title: Text("AppBar"),
      ),
      body: Slider(value:_sliderValue,min: 0.0,max: 100.0,divisions: 100,
      label: _sliderValue.toStringAsFixed(0),
       onChanged: (double newValue) {
        
       }),
    );
  }
}