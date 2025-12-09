import 'package:flutter/material.dart';

class Activity2 extends StatefulWidget {
  const Activity2({super.key});

  @override
  State<Activity2> createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 2),
            child: Image.asset(
              "image/download (1).jpg",
              height: 300,
              width: 300,
            ),
          ),
          SizedBox(height: 5),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.purple, Colors.blue, Colors.cyan],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Time",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
              "We transform service-based e-commerce allowing time sellers to focus on service delivery",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: BorderSide(color: Colors.blueAccent, width: 1.2),
              elevation: 0,
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            ),
            child: Text("Explore", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
