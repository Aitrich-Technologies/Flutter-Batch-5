import 'dart:async';

import 'package:blooddonation/Login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("asset/Donate Blood Safe Life.json"),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\"Be The Reason Someones Lives Today\"",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 168, 16, 5),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}
