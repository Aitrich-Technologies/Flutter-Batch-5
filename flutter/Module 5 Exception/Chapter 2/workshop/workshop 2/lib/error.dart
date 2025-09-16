import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Errors extends StatefulWidget {
  const Errors({super.key});

  @override
  State<Errors> createState() => _ErrorsState();
}

class _ErrorsState extends State<Errors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.blue,
        decoration: const BoxDecoration(),
      )),
    );
  }
}
