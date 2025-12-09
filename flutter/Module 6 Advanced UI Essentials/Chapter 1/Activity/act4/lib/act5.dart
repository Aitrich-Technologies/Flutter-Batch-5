import 'package:flutter/material.dart';

class Act5 extends StatefulWidget {
  const Act5({super.key});

  @override
  State<Act5> createState() => _Act5State();
}

class _Act5State extends State<Act5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("prefix and Suffix icon"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              
              label: Text("enter text"),
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))),
          ),
        ),
      ),
    );
  }
}
