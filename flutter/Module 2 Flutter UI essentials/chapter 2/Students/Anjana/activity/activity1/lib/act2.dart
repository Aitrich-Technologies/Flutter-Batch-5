import 'package:flutter/material.dart';

class Act2 extends StatefulWidget {
  const Act2({super.key});

  @override
  State<Act2> createState() => _Act2State();
}

class _Act2State extends State<Act2> {
  int _SelectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("radiobutton",),
    backgroundColor: Colors.amberAccent),
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [Text("choose an option",style: TextStyle(fontSize: 30,
    fontWeight: FontWeight.w800),),SizedBox(height: 10,),
    RadioListTile<int>(title: Text("option 1",style: TextStyle(fontSize: 20),),
    value: 1, groupValue: _SelectedValue, onChanged: (int? value){setState(() {
      _SelectedValue = value!;
    });
    }),
    RadioListTile<int>(title: Text("option 2",style: TextStyle(fontSize: 20)),
    value: 2, groupValue: _SelectedValue, onChanged: (int? value){setState(() {
      _SelectedValue = value!;
    });})
    ],
     ),
    );
  }
}