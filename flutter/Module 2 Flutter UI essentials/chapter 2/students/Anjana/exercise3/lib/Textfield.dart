import 'package:flutter/material.dart';

class Act1 extends StatefulWidget {
  @override
  State<Act1> createState() => _Act1State();
}

class _Act1State extends State<Act1> {
  bool isChecked = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor:Colors.amberAccent,
    title:Text("appbar") ,),
    body: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [Checkbox(value: isChecked, onChanged: (bool? value)
    {setState(() {
      isChecked = value ?? false;
    });
    }),
    Text("check me")]
    ,),),
    );
  }
}