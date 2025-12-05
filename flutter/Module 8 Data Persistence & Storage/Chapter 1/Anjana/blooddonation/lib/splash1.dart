import 'dart:async';

import 'package:blooddonation/Home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen1 extends StatefulWidget {
  const Splashscreen1({super.key});

  @override
  State<Splashscreen1> createState() => _Splashscreen1State();
}

class _Splashscreen1State extends State<Splashscreen1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Center(child:  Lottie.asset("asset/Blood Donation.json",fit: BoxFit.fill)),
      ),
    );
       
  }
}
