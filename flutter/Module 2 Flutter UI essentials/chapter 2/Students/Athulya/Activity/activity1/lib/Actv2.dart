import 'package:flutter/material.dart';

class Actv2 extends StatefulWidget {
  const Actv2({super.key});

  @override
  State<Actv2> createState() => _Actv2State();
}

class _Actv2State extends State<Actv2> {
  // ignore: unused_field
  int _selectedValue = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pinkAccent,title: Text("AppBar"),
      ),
    body: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Choose an option:'),
        const SizedBox(height: 10,),
        RadioListTile<int>(title: const Text('Option 1'), value: 1,groupValue:_selectedValue, onChanged:(int? value){
          setState(() {
            _selectedValue=value!;
          });
        }
        ),
        RadioListTile<int>(title:const Text('Option 2') ,
        value:2, groupValue: _selectedValue, onChanged: (int? value) {
          setState(() {
            _selectedValue=value!;
          });
        })
      ],
    ),);
  }
}