import 'package:flutter/material.dart';

class Act3 extends StatefulWidget {
  const Act3({super.key});

  @override
  State<Act3> createState() => _Act3State();
}

class _Act3State extends State<Act3> {
  double _sliderValue = 10;
    @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("slider"),
    backgroundColor: const Color.fromARGB(255, 140, 236, 7),),
    body: 
    Slider(value: _sliderValue,min: 0,max: 100,divisions: 100,
    label: _sliderValue.toStringAsFixed(0),
     onChanged: (double newValue){setState(() {
       _sliderValue = newValue;
     });
     },
     ));
  }
}