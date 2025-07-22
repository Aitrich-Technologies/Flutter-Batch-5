import 'package:flutter/material.dart';

class Actv4 extends StatefulWidget {
  const Actv4({super.key});

  @override
  State<Actv4> createState() => _Actv4State();
}

class _Actv4State extends State<Actv4> {
  String? _selectedItem = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dropdown Example")),
      body: Center(
        child: DropdownButton<String>(
          value: _selectedItem,
          items: ['Item 1', 'Item 2', 'Item 3', 'Item 4']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
          },
        ),
      ),
    );
  }
}
