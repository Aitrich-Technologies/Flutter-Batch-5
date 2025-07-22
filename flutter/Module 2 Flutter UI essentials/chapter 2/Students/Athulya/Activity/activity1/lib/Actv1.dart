// 
import 'package:flutter/material.dart';

class Actv1 extends StatefulWidget {
  const Actv1({super.key});

  @override
  State<Actv1> createState() => _Actv1State();
}

class _Actv1State extends State<Actv1> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text("AppBar"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue ?? false;
                });
              },
            ),
            const Text('Check me'),
          ],
        ),
      ),
    );
  }
}
