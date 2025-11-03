
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: First(), debugShowCheckedModeBanner: false));
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset(
            "image/download (5).jpeg",
            height: 500,
            width: 400,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 1),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                const Color.fromARGB(255, 20, 161, 212),
                const Color.fromARGB(255, 44, 73, 220),
                const Color.fromARGB(255, 147, 9, 220),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Padding(
              padding: const EdgeInsets.only(right: 210.0),
              child: Text(
                "Physical",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 213, 207, 218),
                ),
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                const Color.fromARGB(255, 160, 15, 227),
                const Color.fromARGB(255, 44, 73, 220),
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Products",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "we revolutionised thevway merchants operates wheather through one shopping caetb andv marketpieces.",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(height: 5),

          Container(
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
        ],
      ),
    );
  }
}




