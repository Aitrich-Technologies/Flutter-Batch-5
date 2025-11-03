import 'package:exercise4/signuppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Exercise4()));
}

class Exercise4 extends StatefulWidget {
  const Exercise4({super.key});

  @override
  State<Exercise4> createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(211, 235, 102, 146),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQwlR-wPhomGLJxbigNcSgMWIItp9d-SXt3w&s",
            ),
          ),
          Text(
            "Happy Bear",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.brown,
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "login with Email",
                prefixIcon: Icon(Icons.email),
                fillColor: const Color.fromARGB(178, 33, 149, 243),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "login with Facebook",
                prefixIcon: Icon(Icons.facebook),
                fillColor: const Color.fromARGB(158, 15, 173, 57),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Did you have an account ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 1),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            "By continue you agree to our ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Terms and Privacy Policy",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}



