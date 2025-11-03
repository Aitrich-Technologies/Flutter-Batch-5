import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Third()));
}

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset(
            "image/WhatsApp Image 2025-10-23 at 20.48.40_530fad71.jpg",
            height: 500,
            width: 350,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 0),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.blue, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text(
                "Digital",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.blue, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text(
                "Assets",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              " Design element for time management, deadlines and black friday concept.",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),SizedBox(height: 50,),
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
