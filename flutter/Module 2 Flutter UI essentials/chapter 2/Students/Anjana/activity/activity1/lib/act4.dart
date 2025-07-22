import 'package:flutter/material.dart';

class A extends StatefulWidget {
   A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  String? _selectedItem = "item 3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("dropdown"),
    backgroundColor: Colors.blueAccent,),
    body: Center(
      child: DropdownButton<String>(value: _selectedItem,items:[ "item 1" , "item 2","item 3","item 4"]
      .map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem<String>(value: value,child: Text(value),
        );
        }
        ).toList(),
       onChanged: (String? newValue){setState(() {
         _selectedItem = newValue;
       });
       }),
    ),
     );
  }
}

