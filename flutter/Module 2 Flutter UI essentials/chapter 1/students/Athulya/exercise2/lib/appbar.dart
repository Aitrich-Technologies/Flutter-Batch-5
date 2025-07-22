import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.deepOrange,
      title: const Text("AppBar"),
    ),);
  }
}