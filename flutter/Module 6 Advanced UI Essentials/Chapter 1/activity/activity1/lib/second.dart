import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Second()));
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.network(
            "https://img.freepik.com/premium-photo/silver-alarm-clock-black-background-3d-rendering_184700-2758.jpg?semt=ais_hybrid&w=740&q=80",
            height: 500,
            width: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 2),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.blue, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text(
                "Time",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "3d cartoon black alarm clock . Design element for time management, deadlines and black friday concept.",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Center(
             child:  Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF00C6FF), Color(0xFF0072FF)],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.all(1.5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  "Explore",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
