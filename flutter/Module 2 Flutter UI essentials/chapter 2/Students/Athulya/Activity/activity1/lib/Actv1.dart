// 
import 'package:flutter/material.dart';

class Actv10 extends StatefulWidget {
  const Actv10({super.key});

  @override
  State<Actv10> createState() => _Actv10State();
}

class _Actv10State extends State<Actv10> {
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
