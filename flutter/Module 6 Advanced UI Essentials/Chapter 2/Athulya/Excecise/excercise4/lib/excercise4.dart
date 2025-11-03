import 'package:excercise4/signup.dart';
import 'package:flutter/material.dart';

class Excercise4 extends StatefulWidget {
  const Excercise4({super.key});

  @override
  State<Excercise4> createState() => _Excercise4State();
}

class _Excercise4State extends State<Excercise4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Home"),
      ),

      body: Column(
        children: [
          Image.asset(height: 400, width: 250, "image/CUTE CHIBI CAT.jpg"),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Login With Email",
                filled: true,
                fillColor: Colors.lightBlueAccent,
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Login With Facebook",
                filled: true,
                fillColor: Colors.greenAccent,
                prefixIcon: Icon(Icons.facebook),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  "Did not have an account ?",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text("Sign Up", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Text("By Continue you agree to our", style: TextStyle(fontSize: 15)),
          TextButton(
            onPressed: () {},
            child: Text(
              "Terms & Privacy policy",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
